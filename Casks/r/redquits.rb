cask "redquits" do
  version "2.0,1"
  sha256 :no_check

  url "https://redquits.s3.amazonaws.com/RedQuits_v#{version.major}.pkg",
      verified: "redquits.s3.amazonaws.com/"
  name "RedQuits"
  desc "Quit an app when closing the last window"
  homepage "http://carsten-mielke.com/redquits.html"

  livecheck do
    url :homepage
    regex(/href=.*?RedQuits[._-]v?(\d+(?:\.\d+)*)\.pkg/i)
    strategy :page_match do |page, regex|
      major_version = page[regex, 1]
      next if major_version.blank?

      cask = CaskLoader.load(__FILE__)
      download_url = "http://redquits.s3.amazonaws.com/RedQuits_v#{major_version}.pkg"
      Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask:, url: download_url)[:matches].values
    end
  end

  pkg "RedQuits_v#{version.major}.pkg"

  uninstall pkgutil: "com.carsten-mielke.RedQuits"

  zap trash: "~/Library/Preferences/com.carsten-mielke.RedQuits.plist"
end

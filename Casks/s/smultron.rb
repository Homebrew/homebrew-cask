cask "smultron" do
  version "14.0.9,14090"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.peterborgapps.com/downloads/Smultron#{version.major}.zip"
  name "Smultron"
  desc "General-purpose text editor"
  homepage "https://www.peterborgapps.com/smultron/"

  livecheck do
    url :homepage
    regex(/href=.*?Smultron[._-]?v?(\d+)\.zip/i)
    strategy :page_match do |page, regex|
      major_version = page[regex, 1]
      next if major_version.blank?

      cask = CaskLoader.load(__FILE__)
      download_url = "https://www.peterborgapps.com/downloads/Smultron#{major_version}.zip"
      Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask:, url: download_url)[:matches].values
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Smultron.app"

  zap trash: [
    "~/Library/Application Scripts/com.peterborgapps.Smultron#{version.major}",
    "~/Library/Containers/com.peterborgapps.Smultron#{version.major}",
  ]
end

cask "redquits" do
  version "2.0"
  sha256 :no_check

  url "https://redquits.s3.amazonaws.com/RedQuits_v#{version.major}.pkg",
      verified: "redquits.s3.amazonaws.com/"
  name "RedQuits"
  desc "Quit an app when closing the last window"
  homepage "http://carsten-mielke.com/redquits.html"

  livecheck do
    url :homepage
    regex(/RedQuits\s+v?(\d+(?:\.\d+)+)/i)
  end

  pkg "RedQuits_v#{version.major}.pkg"

  uninstall pkgutil: "com.carsten-mielke.RedQuits"

  zap trash: "~/Library/Preferences/com.carsten-mielke.RedQuits.plist"
end

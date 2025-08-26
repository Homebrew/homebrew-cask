cask "caldigit-docking-utility" do
  arch arm: "arm", intel: "x86"

  version "1.9.35"
  sha256 :no_check

  url "https://downloads.caldigit.com/CalDigit-Docking-Station-Utility.zip"
  name "CalDigit Thunderbolt Docking Station Utility"
  desc "Utility to disconnect all drives connected to a Caldigit dock"
  homepage "https://www.caldigit.com/"

  livecheck do
    skip "No version information available"
  end

  # The url is unversioned, but the download returns a pkg with a version number
  rename "CalDigit Docking Station Utility*.pkg", "CalDigit Docking Station Utility.pkg"

  pkg "CalDigit Docking Station Utility.pkg"

  uninstall signal:  ["TERM", "CalDigit.CalDigit-Docking-Station-Utility"],
            pkgutil: "com.CalDigit.CDSU#{arch}.pkg"

  zap trash: [
    "~/Library/Preferences/CalDigit.CalDigit-Docking-Station-Utility.plist",
    "~/Library/Saved Application State/CalDigit.CalDigit-Docking-Station-Utility.savedState",
  ]
end

cask "caldigit-docking-utility" do
  version "1.9.33"
  sha256 :no_check

  url "https://downloads.caldigit.com/CalDigit-Docking-Station-Utility.zip"
  name "CalDigit Thunderbolt Docking Station Utility"
  desc "Utility to disconnect all drives connected to a Caldigit dock"
  homepage "https://www.caldigit.com/"

  livecheck do
    skip "No version information available"
  end

  pkg "CalDigit Docking Station Utility v#{version}.pkg"

  uninstall signal:  ["TERM", "CalDigit.CalDigit-Docking-Station-Utility"],
            pkgutil: "com.CalDigit.CDSU.pkg"

  zap trash: [
    "~/Library/Preferences/CalDigit.CalDigit-Docking-Station-Utility.plist",
    "~/Library/Saved Application State/CalDigit.CalDigit-Docking-Station-Utility.savedState",
  ]
end

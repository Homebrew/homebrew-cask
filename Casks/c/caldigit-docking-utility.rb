cask "caldigit-docking-utility" do
  version "1.931"
  sha256 :no_check

  url "https://downloads.caldigit.com/CalDigit-Docking-Station-Utility.zip"
  name "CalDigit Thunderbolt Docking Station Utility"
  desc "Utility to disconnect all drives connected to a Caldigit dock"
  homepage "https://www.caldigit.com/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["CalDigit.CalDigit-Docking-Station-Utility"]&.short_version
    end
  end

  pkg "CalDigit Docking Station Utility v#{version}.pkg"

  uninstall signal:  ["TERM", "CalDigit.CalDigit-Docking-Station-Utility"],
            pkgutil: "com.CalDigit.CDSU.pkg"

  zap trash: [
    "~/Library/Preferences/CalDigit.CalDigit-Docking-Station-Utility.plist",
    "~/Library/Saved Application State/CalDigit.CalDigit-Docking-Station-Utility.savedState",
  ]
end

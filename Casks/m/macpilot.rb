cask "macpilot" do
  on_high_sierra :or_older do
    version "11.1.3"
    sha256 "1990b04414896ef24767e58cd9b56901460375ee8fb805572ca34da019bcda58"

    url "https://www.koingosw.com/products/macpilot/download/old/macpilot_#{version}_intel_for_1013to1015.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "15.0.3"
    sha256 :no_check

    url "https://www.koingosw.com/products/macpilot/download/macpilot.dmg"

    livecheck do
      url "https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle"
      strategy :sparkle
    end
  end

  name "MacPilot"
  desc "Graphical user interface for the command terminal"
  homepage "https://www.koingosw.com/products/macpilot/"

  depends_on macos: ">= :high_sierra"

  app "MacPilot.app"

  zap trash: [
    "~/Library/Application Support/com.koingosw.MacPilot",
    "~/Library/Caches/com.koingosw.MacPilot",
    "~/Library/Preferences/com.koingosw.MacPilot.plist",
    "~/Library/Saved Application State/com.koingosw.MacPilot.savedState",
  ]
end

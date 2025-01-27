cask "macpilot" do
  on_monterey :or_older do
    on_mojave :or_older do
      version "11.1.3"
      sha256 "1990b04414896ef24767e58cd9b56901460375ee8fb805572ca34da019bcda58"

      url "https://www.koingosw.com/products/macpilot/download/old/macpilot_#{version}_intel_for_1013to1015.dmg"
    end
    on_catalina :or_newer do
      version "16.4"
      sha256 "fec81ddf514938dee70831a769997a8ce540f08df49df12b1f0c9effc686daca"

      url "https://www.koingosw.com/products/macpilot/download/old/macpilot_#{version}_intelarm_for_10.15_to_15.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "16.8"
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

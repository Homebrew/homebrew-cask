cask "macpilot" do
  on_monterey :or_older do
    version "16.4"
    sha256 "fec81ddf514938dee70831a769997a8ce540f08df49df12b1f0c9effc686daca"

    url "https://www.koingosw.com/products/macpilot/download/old/macpilot_#{version}_intelarm_for_10.15_to_15.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "17.3"
    sha256 :no_check

    url "https://www.koingosw.com/products/macpilot/download/macpilot.dmg"

    livecheck do
      url "https://www.koingosw.com/postback/versioncheck.php?appname=macpilot"
      strategy :xml do |xml|
        xml.elements["//macpilot/version"]&.text&.strip
      end
    end
  end

  name "MacPilot"
  desc "Graphical user interface for the command terminal"
  homepage "https://www.koingosw.com/products/macpilot/"

  auto_updates true

  app "MacPilot.app"

  zap trash: [
    "~/Library/Application Support/com.koingosw.MacPilot",
    "~/Library/Caches/com.koingosw.MacPilot",
    "~/Library/HTTPStorages/com.koingosw.MacPilot",
    "~/Library/Preferences/com.koingosw.MacPilot.plist",
    "~/Library/Saved Application State/com.koingosw.MacPilot.savedState",
    "~/Library/WebKit/com.koingosw.MacPilot",
  ]
end

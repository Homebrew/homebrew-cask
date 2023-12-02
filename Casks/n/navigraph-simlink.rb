cask "navigraph-simlink" do
  version "1.1.33.1910"
  sha256 :no_check

  url "https://download.navigraph.com/software/simlink/osx/Navigraph+Simlink.dmg"
  name "navigraph-simlink"
  desc "Magenta aircraft icon helps you find your way in the air and on the ground"
  homepage "https://navigraph.com/"

  livecheck do
    url "https://charts.api.navigraph.com/1/versions/latest?operating_system=mac&software=%7Be5431a0d-8735-4e89-9e41-d820334b2909%7D"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Navigraph Simlink.app"

  zap trash: [
    "~/Library/Saved Application State/Navigraph.NavigraphSimlink.savedState",
    "~/Library/Saved Application State/Navigraph.NavigraphSimlinkSettings.savedState",
    "~/Library/Preferences/Navigraph.NavigraphSimlinkSettings.plist",
  ]
end

cask "dockflow" do
  version "1.59"
  sha256 "fd27203cd89bd8236c55b86b09402857f44f0e0f1519bdfbbf966cdd676856ad"

  url "https://github.com/AppitStudio/dock-flow-updates/releases/download/V#{version}/DockFlow.dmg",
      verified: "github.com/AppitStudio/"
  name "DockFlow"
  desc "Manage Dock presets and switch between them instantly"
  homepage "https://dockflow.appitstudio.com/"

  livecheck do
    url "https://raw.githubusercontent.com/AppitStudio/dock-flow-updates/refs/heads/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "DockFlow.app"

  zap trash: [
    "~/Library/Application Support/DockFlow",
    "~/Library/Group Containers/com.appit.DockFlowGroup",
    "~/Library/Preferences/com.appit.DockFlow.plist",
    "~/Library/Preferences/com.appit.DockFlowHelper.plist",
    "~/Library/Saved Application State/com.appit.DockFlow.savedState",
  ]
end

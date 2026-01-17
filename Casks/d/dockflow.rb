cask "dockflow" do
  version "1.61"
  sha256 "e8b04bc9e5922904574c05eac35f6760fd504637fb6ecedf94803039862cb35e"

  url "https://github.com/AppitStudio/dock-flow-updates/releases/download/v#{version}/DockFlow.dmg",
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

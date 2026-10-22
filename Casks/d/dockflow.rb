cask "dockflow" do
  version "1.88"
  sha256 "90ce2b9fe81eb85dc821e5c81fe505538dd8810aef4c6b8f0c5c5e4681f15a7f"

  url "https://github.com/AppitStudio/dock-flow-updates/releases/download/v#{version}/DockFlow.dmg"
  name "DockFlow"
  desc "Manage Dock presets and switch between them instantly"
  homepage "https://dockflow.appitstudio.com/"

  livecheck do
    url "https://raw.githubusercontent.com/AppitStudio/dock-flow-updates/refs/heads/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "DockFlow.app"

  uninstall quit: "com.appit.DockFlow"

  zap trash: [
    "~/Library/Application Support/DockFlow",
    "~/Library/Caches/com.appit.DockFlow",
    "~/Library/Group Containers/com.appit.DockFlowGroup",
    "~/Library/Preferences/com.appit.DockFlow.plist",
    "~/Library/Preferences/com.appit.DockFlowHelper.plist",
    "~/Library/Saved Application State/com.appit.DockFlow.savedState",
  ]
end

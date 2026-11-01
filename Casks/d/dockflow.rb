cask "dockflow" do
  version "1.91"
  sha256 "4b977174000c5662ce8d9ec3227872a09b181faadf73f57a5bd8e9f374ff8065"

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
    "~/Library/Preferences/com.appit.DockFlow.licensing-admission.plist",
    "~/Library/Preferences/com.appit.DockFlow.lifecycle.plist",
    "~/Library/Preferences/com.appit.DockFlow.plist",
    "~/Library/Preferences/com.appit.DockFlowHelper.plist",
    "~/Library/Saved Application State/com.appit.DockFlow.savedState",
  ]
end

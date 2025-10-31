cask "dockflow" do
  version "1.53"
  sha256 "843389e15d666b6837790722e62c7da930fc2567e189136448a1c8ebbb24f2dd"

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

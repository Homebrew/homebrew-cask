cask "openlist-app" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "961ac84fdec16ea7e2734763f1528159cad32a82281bbb786e905748c74d802b",
         intel: "4be5e48a20daac219ff354f9ca5e3aefdf0a7f9cb0c266bd5333951db6e24710"

  url "https://github.com/OpenListTeam/OpenList-Desktop/releases/download/v#{version}/OpenList-Desktop_#{version}_#{arch}.dmg"
  name "OpenList Desktop"
  desc "Desktop application for OpenList"
  homepage "https://github.com/OpenListTeam/OpenList-Desktop"

  auto_updates true
  depends_on :macos

  app "OpenList-Desktop.app"

  zap trash: [
    "~/Library/Application Scripts/io.github.openlistteam.openlist.desktop",
    "~/Library/Application Support/io.github.openlistteam.openlist",
    "~/Library/Application Support/io.github.openlistteam.openlist.service.bundle",
    "~/Library/Application Support/OpenList Desktop",
    "~/Library/Application Support/openlist-service-config",
    "~/Library/Caches/io.github.openlistteam.openlist.desktop",
    "~/Library/Group Containers/io.github.openlistteam.openlist.desktop",
    "~/Library/LaunchAgents/io.github.openlistteam.openlist.service.plist",
    "~/Library/Logs/OpenList Desktop",
    "~/Library/WebKit/io.github.openlistteam.openlist.desktop",
  ]
end

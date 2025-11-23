cask "openlist-app" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "19ea02135ccca0ffed420eddbcc05d1ad968605064c8d33e81e1434e0e288998",
         intel: "7c00ea532e68eb0860877d46e979a8d063b732a7fb73a7e52474db3b5e1176ba"

  url "https://github.com/OpenListTeam/OpenList-Desktop/releases/download/v#{version}/OpenList.Desktop_#{version}_#{arch}_darwin.dmg"
  name "OpenList Desktop"
  desc "Desktop application for OpenList"
  homepage "https://github.com/OpenListTeam/OpenList-Desktop"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "OpenList Desktop.app"

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

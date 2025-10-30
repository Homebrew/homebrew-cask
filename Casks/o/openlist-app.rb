cask "openlist-app" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "b3af22c1d662ccc7a9b138f2a015eab59dfb4227ab2f0dbf66d4f504397c06d7",
         intel: "71d1972b097801296beadc58da5e2ac1245402a81d98e90c852c1ee00e130f10"

  url "https://github.com/OpenListTeam/OpenList-Desktop/releases/download/v#{version}/OpenList.Desktop_#{version}_#{arch}.dmg"
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

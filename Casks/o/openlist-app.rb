cask "openlist-app" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "7e113bb1bb689bfdc2b9529c1921152d8a6272aebf44f4002aa02695e842846a",
         intel: "c38a317e956d319b45d1c3751fab543303facedb709b42269ca2f44eaab0ad10"

  url "https://github.com/OpenListTeam/OpenList-Desktop/releases/download/v#{version}/OpenList-Desktop_#{version}_#{arch}.dmg"
  name "OpenList Desktop"
  desc "Desktop application for OpenList"
  homepage "https://github.com/OpenListTeam/OpenList-Desktop"

  auto_updates true
  depends_on macos: ">= :catalina"

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

cask "crewtower" do
  version "1.0.38"
  sha256 "56d77dfd2812adfac20d5b95a5b413a722bdae9333f3d75c4458de7198d31655"

  url "https://dl.crewtower.app/CrewTower-#{version}.dmg"
  name "CrewTower"
  desc "Notch panel to monitor and approve AI coding agents"
  homepage "https://crewtower.app/"

  livecheck do
    url "https://dl.crewtower.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "CrewTower.app"

  uninstall quit: "app.crewtower.CrewTower"

  zap trash: [
    "~/Library/Application Support/CrewTower",
    "~/Library/Caches/app.crewtower.CrewTower",
    "~/Library/HTTPStorages/app.crewtower.CrewTower",
    "~/Library/Preferences/app.crewtower.CrewTower.plist",
  ]
end

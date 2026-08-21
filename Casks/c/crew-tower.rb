cask "crew-tower" do
  version "1.0.13"
  sha256 "7d007d6319b8f938f8dbdb454e03eac644b2305680060ee2ac5a18e54f45d965"

  url "https://dl.crewtower.app/CrewTower-#{version}.dmg"
  name "Crew Tower"
  desc "Notch panel to monitor and approve AI coding agents"
  homepage "https://crewtower.app/"

  livecheck do
    url "https://dl.crewtower.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Crew Tower.app"

  uninstall quit: "app.crewtower.CrewTower"

  zap trash: [
    "~/Library/Application Support/CrewTower",
    "~/Library/Caches/app.crewtower.CrewTower",
    "~/Library/HTTPStorages/app.crewtower.CrewTower",
    "~/Library/Preferences/app.crewtower.CrewTower.plist",
  ]
end

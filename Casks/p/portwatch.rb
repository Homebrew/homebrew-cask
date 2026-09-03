cask "portwatch" do
  version "1.3"
  sha256 "36ce54232211b79b73db77514c81a697de99ce45b3df076a69c7ec26482e2904"

  url "https://janecek.app/portwatch/downloads/releases/PortWatch-#{version}.dmg"
  name "PortWatch"
  desc "Menu bar viewer for open TCP/UDP ports with one-click process termination"
  homepage "https://janecek.app/portwatch/"

  livecheck do
    url "https://janecek.app/portwatch/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PortWatch.app"

  zap trash: [
    "~/Library/Caches/cz.portwatch.app",
    "~/Library/HTTPStorages/cz.portwatch.app",
    "~/Library/Preferences/cz.portwatch.app.plist",
  ]
end

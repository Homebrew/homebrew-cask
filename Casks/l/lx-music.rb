cask "lx-music" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0"
  sha256 arm:   "7fea4d67b9963d217ebb29d2ebf547eab953fbe21e7b503228aa3adef98d3685",
         intel: "4519ddff360043d70efc8835f4da0b7ef389f2241af3552ada37432b61661854"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  depends_on macos: ">= :catalina"

  app "lx-music-desktop.app"

  zap trash: [
    "~/Library/Application Support/lx-music-desktop",
    "~/Library/Logs/lx-music-desktop",
  ]
end

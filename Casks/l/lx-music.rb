cask "lx-music" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "d3e86be258b9ca9c548ce9306a60450ee503b2ccfbcae343fe2421314d4eb2a4",
         intel: "d0d06c260c3d5e6427d42689ecce45638909c9e490bdfd311108b303673cbb56"

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

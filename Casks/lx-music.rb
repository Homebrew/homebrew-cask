cask "lx-music" do
  arch arm: "-arm64"

  version "2.3.0"
  sha256 arm:   "8c4fbdf05d218e40a7efff4ae48bf2aaafd565bf399b7fd1effd375aa4819de9",
         intel: "d74e209b9f6a45c1d9f744e646a4265f019b95f7890e0bb84d245a4c21375ea8"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"

  zap trash: [
    "~/Library/Application Support/lx-music-desktop",
    "~/Library/Logs/lx-music-desktop",
  ]
end

cask "lx-music" do
  arch arm: "-arm64"

  version "2.0.1"
  sha256 arm:   "002505137da022add28c9c988b44f1ba2f7e61c3498b3092d8802c7515a498b4",
         intel: "a8ff1f4742eccdc7785fbb33d2b2e75cdf46e8bbcac2c31819bbaba8e2032b69"

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

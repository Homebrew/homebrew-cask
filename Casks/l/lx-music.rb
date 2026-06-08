cask "lx-music" do
  arch arm: "arm64", intel: "x64"

  version "2.12.2"
  sha256 arm:   "e28f4dbed7edc0182c4994117181ed5ceee674f9e36b004f10d34d23864630bf",
         intel: "7c74e817e254c2805bf66395dca0d58ae0d4d6f6be5e478db9733f0a96239170"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "lx-music-desktop.app"

  zap trash: [
    "~/Library/Application Support/lx-music-desktop",
    "~/Library/Logs/lx-music-desktop",
  ]
end

cask "lx-music" do
  arch arm: "arm64", intel: "x64"

  version "2.12.0"
  sha256 arm:   "9f52bcb7559beb018cba0d7ef0cc68d61f6c28e880c4b4ea06c6357df2ece50e",
         intel: "40ef4b74a1a3518f1114d7836854d2cd93ff010fbff52db8e650ff3ea0e95969"

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "lx-music-desktop.app"

  zap trash: [
    "~/Library/Application Support/lx-music-desktop",
    "~/Library/Logs/lx-music-desktop",
  ]
end

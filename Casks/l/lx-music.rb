cask "lx-music" do
  arch arm: "arm64", intel: "x64"

  version "2.12.1"
  sha256 arm:   "92f2c04dfa0959e3aabaa0ac9717e97a55adf79cbce08e22a1c1e92b77bbc04f",
         intel: "c50f148503d75e841e5acd44dd14a916aa1d87385a3290318e793b56b1807aef"

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

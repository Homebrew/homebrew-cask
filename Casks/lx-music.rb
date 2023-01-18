cask "lx-music" do
  arch arm: "-arm64"

  version "2.0.4"
  sha256 arm:   "56a6d1a935b0d51a27afeef2087506c6a990b51f0f9c1141cd28049b022021d3",
         intel: "d16943f3419fff3d3f70e428be6bd59435a7037202611c2fba472a7768bf3465"

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

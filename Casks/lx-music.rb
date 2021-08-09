cask "lx-music" do
  version "1.12.1"

  if Hardware::CPU.intel?
    sha256 "15dd581c91fd63b64ce6b0fc59160a863b96f045e882993b2d296b39531fda8b"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  else
    sha256 "398861bdab7a83b1024d9e2702db192e7c2c1d6a405b63286a8468b049dfbf4e"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-arm64.dmg"
  end

  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end

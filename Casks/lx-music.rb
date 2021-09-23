cask "lx-music" do
  version "1.13.0"

  if Hardware::CPU.intel?
    sha256 "024a8353e3abc17670df88c0120326dcfc42c59f12c567e2fbb24a91567a000a"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  else
    sha256 "fb3881bf68788ba53f090a9bca2eacf3c1aa40ef415e18fbf81283b3c7497d77"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-arm64.dmg"
  end

  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end

cask "lx-music" do
  arch arm: "-arm64"

  version "1.22.2"

  on_intel do
    sha256 "7d44b3c072fb0cb6e6e5949f8087222da0393782cbfebf896872516ab0e96b2a"
  end
  on_arm do
    sha256 "8f30eb1264e300d0bcd543d61b7d84dcfd06c8e372cc7daed1c4645aeba81bc4"
  end

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

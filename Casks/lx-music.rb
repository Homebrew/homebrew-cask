cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.16.0"

  if Hardware::CPU.intel?
    sha256 "4d38de00504e68be30cc1838ab1a4a4514169a645ecd020047a72385f67e254e"
  else
    sha256 "1efe0c1825bf6963ce2f2a5d421c6e11d03821800043e64c0dd482b5edba9f9a"
  end

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end

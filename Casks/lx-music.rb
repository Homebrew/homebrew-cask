cask "lx-music" do
  version "1.12.2"

  if Hardware::CPU.intel?
    sha256 "5c5825cff999905422a3082510d6a2ff65f22b4cf6d7a13ae56c9109a35515d8"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  else
    sha256 "4823d8977429c9d6ba0bd87900c54bd9348e28a380186f1de2642d8d321ebf0b"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-arm64.dmg"
  end

  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end

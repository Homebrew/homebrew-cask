cask "lx-music" do
  version "1.14.1"

  if Hardware::CPU.intel?
    sha256 "5073ffc0ab0b1a379d702e9b1d8a77ac4b2a84c1ecba4f8dc9fc571120b609ad"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  else
    sha256 "f84cb62017c140d1687fde0413e76a13179163119808710fef0f73ad20a8bba8"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-arm64.dmg"
  end

  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end

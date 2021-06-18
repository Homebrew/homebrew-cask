cask "lx-music" do
  version "1.10.2"

  if Hardware::CPU.intel?
    sha256 "94bb5a79a9f29291269fcdc706e13e02acc6f6efe85c80b92ba99fd5e50ec5fe"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}.dmg"
  else
    sha256 "07821f1d6d4625dd1904c62fe6d68ad928d2bc1b33fad19e49605960ddfcb4c7"

    url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}-arm64.dmg"
  end

  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end

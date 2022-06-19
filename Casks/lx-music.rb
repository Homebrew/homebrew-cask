cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.22.0"

  if Hardware::CPU.intel?
    sha256 "f46e27f526e5bdb80254e3b8e92eb5816bfa143f0e839ac0b713f0fe54775e65"
  else
    sha256 "83aaca1c3bbaae2a1af0858b68018fc9928aacd56ba8cc942dc19509b26e2797"
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

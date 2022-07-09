cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.22.1"

  if Hardware::CPU.intel?
    sha256 "e74158b77f2da4a9b6e0530f7fa7a9f34c66b479922d8708eb06fb475dd3a218"
  else
    sha256 "462ffb39ae422debc1d23b70f0ea123dc995627d4a3a7b526d0e0d07511ea3fd"
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

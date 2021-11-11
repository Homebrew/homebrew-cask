cask "lx-music" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.15.2"

  if Hardware::CPU.intel?
    sha256 "9f0318fcc5a7cdf73cbaf876755ac0410ce3f513a8e282cf1d6e3d7f24f6af02"
  else
    sha256 "fc1865b810707a03923bbc4711ee9c319ccce3673d41b0fd277453f49305f9de"
  end

  url "https://github.com/lyswhut/lx-music-desktop/releases/download/v#{version}/lx-music-desktop-#{version}#{arch}.dmg"
  name "LX Music Assistant Desktop Edition"
  name "洛雪音乐助手桌面版"
  desc "Music app base on Electron & Vue"
  homepage "https://github.com/lyswhut/lx-music-desktop/"

  app "lx-music-desktop.app"
end

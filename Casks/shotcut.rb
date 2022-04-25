cask "shotcut" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-ARM64"

  version "22.04.22"

  if Hardware::CPU.intel?
    sha256 "7162d59d58aa701e95686a9ef267cdc7ac8fadf757e1734ec79e2321a30c6959"
  else
    sha256 "bb4aff3a8cfd6ff898e508b9378b30a1c8d196112a755e337078e8a9d8b1e7c3"
  end

  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-#{arch}-#{version.no_dots}.dmg",
      verified: "github.com/mltframework/shotcut/"
  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shotcut.app"
end

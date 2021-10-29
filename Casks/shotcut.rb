cask "shotcut" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-ARM64"

  version "21.09.20"

  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-#{arch}-#{version.no_dots}.dmg",
      verified: "github.com/mltframework/shotcut/"
  if Hardware::CPU.intel?
    sha256 "631f8732c351f4b5961e949b0750acf5242a323a740ba4c01522e1e6cf5d620b"
  else
    sha256 "6752784b79ed3ad47167acf82d1e6b6b1adb268f634453ee586eae6a70784cca"
  end

  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shotcut.app"
end

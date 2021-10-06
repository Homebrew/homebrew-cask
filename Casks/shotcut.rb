cask "shotcut" do
  version "21.09.20"

  if Hardware::CPU.intel?
    sha256 "631f8732c351f4b5961e949b0750acf5242a323a740ba4c01522e1e6cf5d620b"

    url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-#{version.no_dots}.dmg",
        verified: "github.com/mltframework/shotcut/"
  else
    sha256 "6752784b79ed3ad47167acf82d1e6b6b1adb268f634453ee586eae6a70784cca"

    url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-ARM64-#{version.no_dots}.dmg",
        verified: "github.com/mltframework/shotcut/"
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

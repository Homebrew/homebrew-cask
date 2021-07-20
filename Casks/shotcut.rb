cask "shotcut" do
  version "21.06.29"

  if Hardware::CPU.intel?
    sha256 "0a2ff1d9c403dc4e6cf36e0b5b95550471d3eef1f65a7af4b718f49601a3c2be"

    url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-#{version.no_dots}.dmg",
        verified: "github.com/mltframework/shotcut/"
  else
    sha256 "2813d09144de45adfd7db097e9f44f23f8f33c3fe36e56cbda69dda0c8a9eb8d"

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

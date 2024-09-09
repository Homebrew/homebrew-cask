cask "automute" do
  version "1.1"
  sha256 "9c9991790d947cb75c3e21088392c5cfe0d4da0bbc631b5d10abe1fc20353130"

  url "https://github.com/Lorenzo45/AutoMute/releases/download/v#{version}/AutoMute.zip"
  name "AutoMute"
  desc "Mute or unmute the system based on the current Wi-Fi network"
  homepage "https://github.com/Lorenzo45/AutoMute"

  deprecate! date: "2024-09-08", because: :unmaintained

  app "AutoMute.app"

  caveats do
    requires_rosetta
  end
end

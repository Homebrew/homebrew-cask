cask "streamlink-twitch-gui" do
  version "1.12.0"
  sha256 "2995c6323b845e36520332808037b96858eecf4b2c884dcfb0b82162d32ad0f3"

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  name "Streamlink Twitch GUI"
  desc "Multi platform Twitch.tv browser for Streamlink"
  homepage "https://github.com/streamlink/streamlink-twitch-gui/"

  depends_on formula: "streamlink"

  app "Streamlink Twitch GUI.app"
end

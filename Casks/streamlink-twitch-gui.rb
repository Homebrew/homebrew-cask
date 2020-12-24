cask "streamlink-twitch-gui" do
  version "1.11.0"
  sha256 "b8067552a0d3d4b02d6444a443307507543294a7774131331a0a4aaa07422849"

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast "https://github.com/streamlink/streamlink-twitch-gui/releases.atom"
  name "Streamlink Twitch GUI"
  desc "Multi platform Twitch.tv browser for Streamlink"
  homepage "https://github.com/streamlink/streamlink-twitch-gui/"

  depends_on formula: "streamlink"

  app "Streamlink Twitch GUI.app"
end

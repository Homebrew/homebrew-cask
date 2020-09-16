cask "streamlink-twitch-gui" do
  version "1.10.0"
  sha256 "957577720edb66dca92c4e03bd3f0e57f7f5d6cea30f58a8a2be6912654abed9"

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  appcast "https://github.com/streamlink/streamlink-twitch-gui/releases.atom"
  name "Streamlink Twitch GUI"
  desc "Multi platform Twitch.tv browser for Streamlink"
  homepage "https://github.com/streamlink/streamlink-twitch-gui/"

  depends_on formula: "streamlink"

  app "Streamlink Twitch GUI.app"
end

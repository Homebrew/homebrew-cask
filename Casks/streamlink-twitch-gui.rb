cask "streamlink-twitch-gui" do
  version "1.13.0"
  sha256 "1e8ce039e0282c2cd739e2eef735f70db338cf5e390e9be596bdde2f36eaa2de"

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  name "Streamlink Twitch GUI"
  desc "Multi platform Twitch.tv browser for Streamlink"
  homepage "https://github.com/streamlink/streamlink-twitch-gui/"

  depends_on formula: "streamlink"

  app "Streamlink Twitch GUI.app"
end

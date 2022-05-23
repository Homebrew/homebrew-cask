cask "streamlink-twitch-gui" do
  version "2.1.0"
  sha256 "a093923ff3926338f3a6aa6041fd1c7ad32c864adeb657d197b5235e97acd020"

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  name "Streamlink Twitch GUI"
  desc "Multi platform Twitch.tv browser for Streamlink"
  homepage "https://github.com/streamlink/streamlink-twitch-gui/"

  depends_on formula: "streamlink"

  app "Streamlink Twitch GUI.app"
end

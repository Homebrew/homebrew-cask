cask "streamlink-twitch-gui" do
  version "2.4.0"
  sha256 "0cfcff755cce5fe6458cfb3c4519fc394775e05c7ec0f8512cb4000ce2b890a8"

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  name "Streamlink Twitch GUI"
  desc "Multi platform Twitch.tv browser for Streamlink"
  homepage "https://github.com/streamlink/streamlink-twitch-gui/"

  depends_on formula: "streamlink"

  app "Streamlink Twitch GUI.app"

  zap trash: [
    "~/Library/Application Support/streamlink-twitch-gui",
    "~/Library/Caches/streamlink-twitch-gui",
    "~/Library/Logs/streamlink-twitch-gui",
  ]
end

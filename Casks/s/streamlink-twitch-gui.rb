cask "streamlink-twitch-gui" do
  version "2.5.1"
  sha256 "6d56969a4ff50f6f69de44542dc2e4b37c6adcc9078ec5fa2c566847f6d14ee2"

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  name "Streamlink Twitch GUI"
  desc "Multi platform Twitch.tv browser for Streamlink"
  homepage "https://github.com/streamlink/streamlink-twitch-gui/"

  depends_on formula: "streamlink"
  depends_on macos: ">= :high_sierra"

  app "Streamlink Twitch GUI.app"

  zap trash: [
    "~/Library/Application Support/streamlink-twitch-gui",
    "~/Library/Caches/streamlink-twitch-gui",
    "~/Library/Logs/streamlink-twitch-gui",
  ]
end

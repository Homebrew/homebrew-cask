cask "streamlink-twitch-gui" do
  version "2.3.0"
  sha256 "57692ebb08968c7846490fa3fa2a9aab87400e9fc1f32003cd3ac308236eec14"

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

cask "streamlink-twitch-gui" do
  version "2.5.0"
  sha256 "cfbca3d748de0c640566a07255c663f1934a32e3776254426fa02e6fe3516a77"

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

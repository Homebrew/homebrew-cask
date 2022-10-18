cask "streamlink-twitch-gui" do
  version "2.2.0"
  sha256 "1101b5dd4076277dce55be0d86741f4e6a28af472c5498d26e6477c2c608502b"

  url "https://github.com/streamlink/streamlink-twitch-gui/releases/download/v#{version}/streamlink-twitch-gui-v#{version}-macOS.tar.gz"
  name "Streamlink Twitch GUI"
  desc "Multi platform Twitch.tv browser for Streamlink"
  homepage "https://github.com/streamlink/streamlink-twitch-gui/"

  depends_on formula: "streamlink"

  app "Streamlink Twitch GUI.app"
end

cask "pongsaver" do
  version "2.1.1"
  sha256 :no_check

  url "https://mikeash.com/software/pongsaver/PongSaver.saver.zip"
  name "PongSaver"
  desc "Screensaver which plays a game of Pong against itself"
  homepage "https://mikeash.com/software/pongsaver"

  livecheck do
    url :url
    strategy :extract_plist
  end

  screen_saver "PongSaver.saver"
end

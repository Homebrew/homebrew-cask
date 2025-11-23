cask "pongsaver" do
  version "3.0"
  sha256 :no_check

  url "https://mikeash.com/software/pongsaver/PongSaver.saver.zip"
  name "PongSaver"
  desc "Screensaver which plays a game of Pong against itself"
  homepage "https://mikeash.com/software/pongsaver/"

  livecheck do
    url :homepage
    regex(/PongSaver\s+v?(\d+(?:\.\d+)+)/i)
  end

  screen_saver "PongSaver.saver"
end

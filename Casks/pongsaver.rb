cask "pongsaver" do
  version :latest
  sha256 :no_check

  url "https://mikeash.com/software/pongsaver/PongSaver.saver.zip"
  name "PongSaver"
  desc "Screensaver which plays a game of Pong against itself"
  homepage "https://mikeash.com/software/pongsaver"

  screen_saver "PongSaver.saver"
end

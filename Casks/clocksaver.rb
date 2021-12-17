cask "clocksaver" do
  version "0.7.1"
  sha256 "a2dbe86718c2721578084585580b29f5f294d098e009a47873fae9b8248c6ad8"

  url "https://github.com/soffes/Clock.saver/releases/download/v#{version}/Clock.saver.zip"
  name "Clock.saver screensaver"
  desc "Screensavers inspired by Braun watches"
  homepage "https://github.com/soffes/Clock.saver"

  screen_saver "Clock.saver"
end

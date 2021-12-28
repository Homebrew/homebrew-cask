cask "clocksaver" do
  version "0.7.2"
  sha256 "584c60b829be6c0a1fc8218c2f056278df836f3450afc61382f05e6507968446"

  url "https://github.com/soffes/Clock.saver/releases/download/v#{version}/Clock.saver.zip"
  name "Clock.saver screensaver"
  desc "Screensavers inspired by Braun watches"
  homepage "https://github.com/soffes/Clock.saver"

  screen_saver "Clock.saver"
end

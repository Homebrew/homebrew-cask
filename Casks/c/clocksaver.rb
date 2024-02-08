cask "clocksaver" do
  version "0.7.3"
  sha256 "c213adf875aa661699c747cc5ed56609ae48d72ab1526cba791f99b44dce62d4"

  url "https://github.com/soffes/Clock.saver/releases/download/v#{version}/Clock.saver.zip"
  name "Clock.saver screensaver"
  desc "Screensavers inspired by Braun watches"
  homepage "https://github.com/soffes/Clock.saver"

  screen_saver "Clock.saver"

  # No zap stanza required
end

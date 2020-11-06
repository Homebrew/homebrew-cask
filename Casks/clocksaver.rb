cask "clocksaver" do
  version "0.7.0"
  sha256 "9497e774695cadfb25fb6ad1b5689a110f806041b34d3b536b862d653de8bca4"

  url "https://github.com/soffes/Clock.saver/releases/download/v#{version}/Clock.saver-#{version}.zip"
  appcast "https://github.com/soffes/Clock.saver/releases.atom"
  name "Clock.saver screensaver"
  homepage "https://github.com/soffes/Clock.saver"

  screen_saver "Clock.saver"
end

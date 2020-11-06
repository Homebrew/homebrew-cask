cask "countdown" do
  version "0.1.0"
  sha256 "3616d9c01d79e14f8db01d492c882700bfcca6c4bf886f1a73e36ad04893213c"

  url "https://github.com/soffes/Countdown/releases/download/v#{version}/Countdown.saver-#{version}.zip"
  appcast "https://github.com/soffes/Countdown/releases.atom"
  name "Countdown Screensaver"
  homepage "https://github.com/soffes/Countdown"

  screen_saver "Countdown.saver"
end

cask "clocksaver" do
  version "0.7.0"
  sha256 "a5559b1bcb20ae5bc473e16e6842618aa3a51ed17e9dc583a069ed1af5931180"

  url "https://github.com/soffes/Clock.saver/releases/download/v#{version}/Clock.saver-#{version}.zip"
  name "Clock.saver screensaver"
  homepage "https://github.com/soffes/Clock.saver"

  screen_saver "Clock.saver"
end

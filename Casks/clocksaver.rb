cask 'clocksaver' do
  version '0.5.1'
  sha256 'f64734fe8598b6c44c4ac1d99b07d0b65e884563c7f616c25a63c1b8e022c387'

  url "https://github.com/soffes/Clock.saver/releases/download/v#{version}/Clock.saver.zip"
  appcast 'https://github.com/soffes/Clock.saver/releases.atom'
  name 'Clock.saver screensaver'
  homepage 'https://github.com/soffes/Clock.saver'

  screen_saver 'Clock.saver'
end

cask 'clocksaver' do
  version '0.5.0'
  sha256 'c8100571928ed293fa4e8f3d325d62882124342ca0dfdb455b63b6baa7043806'

  url "https://github.com/soffes/Clock.saver/releases/download/v#{version}/Clock.saver-#{version}.zip"
  appcast 'https://github.com/soffes/Clock.saver/releases.atom',
          checkpoint: '8bcd68ed6e3fefd0ca5140eee8a34c2f14750171708766c9ba5d1900ff373d33'
  name 'Clock.saver screensaver'
  homepage 'https://github.com/soffes/Clock.saver'

  screen_saver 'Clock.saver'
end

cask 'epoch-flip-clock' do
  version '0.0.3'
  sha256 '837edfe5d498a014b0a580c52a36c7efc71812e9d6c2e582f6dd1f2c8a8262bb'

  url "https://github.com/chrstphrknwtn/epoch-flip-clock/releases/download/#{version}/Epoch.Flip.Clock.saver.zip"
  appcast 'https://github.com/chrstphrknwtn/epoch-flip-clock/releases.atom',
          checkpoint: 'f6196573c6f0e74b5978341b2007fc8c85a6c99b0edc524d8c8c9cf1a7aa5ec2'
  name 'Epoch Flip Clock Screensaver'
  homepage 'https://github.com/chrstphrknwtn/epoch-flip-clock/'

  screen_saver 'Epoch Flip Clock.saver'
end

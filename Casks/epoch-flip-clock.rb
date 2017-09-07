cask 'epoch-flip-clock' do
  version '0.0.3'
  sha256 '837edfe5d498a014b0a580c52a36c7efc71812e9d6c2e582f6dd1f2c8a8262bb'

  url "https://github.com/chrstphrknwtn/epoch-flip-clock/releases/download/#{version}/Epoch.Flip.Clock.saver.zip"
  appcast 'https://github.com/chrstphrknwtn/epoch-flip-clock/releases.atom',
          checkpoint: '41a86464323f5fbaed984ba4bb930aaca4d458c10d4dc8b281c93183f2521942'
  name 'Epoch Flip Clock Screensaver'
  homepage 'https://github.com/chrstphrknwtn/epoch-flip-clock/'

  screen_saver 'Epoch Flip Clock.saver'
end

cask 'epoch-flip-clock' do
  version '0.0.4'
  sha256 '7a9fe06209a140ea86a6a37263e3476ce9080bc274d27b815e373a3f8352c45d'

  url "https://github.com/chrstphrknwtn/epoch-flip-clock-screensaver/releases/download/#{version}/Epoch.Flip.Clock.#{version}.saver.zip"
  appcast 'https://github.com/chrstphrknwtn/epoch-flip-clock-screensaver/releases.atom'
  name 'Epoch Flip Clock Screensaver'
  homepage 'https://github.com/chrstphrknwtn/epoch-flip-clock-screensaver/'

  screen_saver 'Epoch Flip Clock.saver'
end

cask 'praat' do
  version '6.0.36'
  sha256 '5fe22254c0ce2a9ddea7de4d497fd3d5d620725ce690d123381dda44cccd7c30'

  # github.com/praat/praat/releases was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '2a347fbe3d6ae15184feaf71a2856fdca856cb7e06daabc26d0fd3f88ed76709'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end

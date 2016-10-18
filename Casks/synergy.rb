cask 'synergy' do
  version '1.8.4,a6ff907'
  sha256 '897d35998c9f537fd6916a43c4c461c63db2d7611444f6bc27d91d0557e4621f'

  url "https://symless.com/files/packages/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX1011-x86_64.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy/'

  app 'Synergy.app'
end

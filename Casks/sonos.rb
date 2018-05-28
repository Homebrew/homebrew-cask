cask 'sonos' do
  version :latest
  sha256 :no_check

  url 'https://update-software.sonos.com/software/mac/mdcr/SonosDesktopController851.dmg'
  name 'Sonos'
  homepage 'https://www.sonos.com'

  app 'Sonos.app'
end

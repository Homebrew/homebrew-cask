cask 'repetier-host' do
  version '0.56'
  sha256 '0d4b43ec7bec5ac85133d00e1a2cf61956ef90abc255c253029e0ef26160adfa'

  url "http://www.repetier.com/updates/rhm/Repetier-Host-Mac_#{version.gsub('.', '_')}.dmg"
  appcast 'http://www.repetier.com/updates/rhm/rhm-appcast.xml',
          :checkpoint => 'cf7fcd61c3a79b8f87cbb702a6da19ededb77b4a0caeefeabed6406a22a9efd2'
  name 'Repetier-Host'
  homepage 'http://www.repetier.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Repetier-Host Mac.app'
end

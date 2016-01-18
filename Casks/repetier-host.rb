cask 'repetier-host' do
  version '0.56'
  sha256 '0d4b43ec7bec5ac85133d00e1a2cf61956ef90abc255c253029e0ef26160adfa'

  url "http://www.repetier.com/updates/rhm/Repetier-Host-Mac_#{version.gsub('.', '_')}.dmg"
  appcast 'http://www.repetier.com/updates/rhm/rhm-appcast.xml',
          checkpoint: '465e0b22421fa56a9da4c564d409da1242eb5ceee6789c040ceb5e75db5ffe85'
  name 'Repetier-Host'
  homepage 'http://www.repetier.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Repetier-Host Mac.app'
end

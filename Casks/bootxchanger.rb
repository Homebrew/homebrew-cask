cask 'bootxchanger' do
  version '2.0'
  sha256 'cfb05680ab6a7d0b1793a33135dd15562a7b5fd59bb1ebf3ad6067c2c9fad6c1'

  url "http://namedfork.net/_media/bootxchanger_#{version}.dmg"
  appcast 'http://swupdate.namedfork.net/bootxchanger.xml',
          checkpoint: '1c3c0913f51c0d8dd6b8320460e3be60f9541f62dab75f56e5befb690a7566dc'
  name 'BootXChanger'
  homepage 'http://namedfork.net/bootxchanger'
  license :gpl

  app 'BootXChanger.app'
end

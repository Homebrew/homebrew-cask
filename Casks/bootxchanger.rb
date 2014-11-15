cask :v1 => 'bootxchanger' do
  version '2.0'
  sha256 'cfb05680ab6a7d0b1793a33135dd15562a7b5fd59bb1ebf3ad6067c2c9fad6c1'

  url "http://namedfork.net/_media/bootxchanger_#{version}.dmg"
  appcast 'http://swupdate.namedfork.net/bootxchanger.xml',
          :sha256 => 'afbae3b2a378ebb18f1668c062ba48436e956cad840fcc86cba610d351931187'
  homepage 'http://namedfork.net/bootxchanger'
  license :gpl

  app 'BootXChanger.app'
end

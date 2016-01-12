cask 'bootxchanger' do
  version '2.0'
  sha256 'cfb05680ab6a7d0b1793a33135dd15562a7b5fd59bb1ebf3ad6067c2c9fad6c1'

  url "http://namedfork.net/_media/bootxchanger_#{version}.dmg"
  appcast 'http://swupdate.namedfork.net/bootxchanger.xml',
          :sha256 => 'd49278c876353b2f1171a0f0aecbf32549c94aed52cb9fecc93f9eed014ee00b'
  name 'BootXChanger'
  homepage 'http://namedfork.net/bootxchanger'
  license :gpl

  app 'BootXChanger.app'
end

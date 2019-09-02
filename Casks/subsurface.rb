cask 'subsurface' do
  version '4.9.1'
  sha256 'c71bab895466d4c7baf7d58a158b60b53cc0488e9eab62ab4d4d74c92ab73db0'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  appcast 'https://subsurface-divelog.org/download/'
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end

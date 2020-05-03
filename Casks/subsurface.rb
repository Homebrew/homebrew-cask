cask 'subsurface' do
  version '4.9.4'
  sha256 'c129cedf74c4c8d22bc965310fe1eb2ccb7eb69decbf690f2b7ab3ef190bcf5b'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  appcast 'https://subsurface-divelog.org/download/'
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end

cask 'astroguider' do
  version '3.11'
  sha256 '77233084ce67c3e357e3fc04df6aead3c066fadcd495629bac718e87a340aaec'

  url "http://download.cloudmakers.eu/AstroGuider_#{version}.dmg"
  appcast 'http://www.cloudmakers.eu/astroguider/'
  name 'AstroGuider'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroGuider.app'
end

cask 'astroguider' do
  version '3.10'
  sha256 '008a4fc209993f8373d62c28062e80eeddf5f1e9728cb0ecedf2925bf5e8bda5'

  url "http://download.cloudmakers.eu/AstroGuider_#{version}.dmg"
  appcast 'http://www.cloudmakers.eu/astroguider/'
  name 'AstroGuider'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroGuider.app'
end

cask 'stremio' do
  version '4.4.10'
  sha256 'b0c185d2f161b13d9e1a22c3ec35305c34afa1d69be400cf6c684da0317a8f0e'

  url "https://dl.strem.io/mac/v#{version}/Stremio+#{version}.dmg"
  appcast 'https://www.stremio.com/downloads'
  name 'Stremio'
  homepage 'https://www.strem.io/'

  app 'Stremio.app'
end

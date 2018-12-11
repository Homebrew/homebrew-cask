cask 'stremio' do
  version '4.4.25'
  sha256 '385df67729d8ac7af2f1431b4adfdee91489152e8668687fa2c8e7b8814e6351'

  url "https://dl.strem.io/mac/v#{version}/Stremio+#{version}.dmg"
  appcast 'https://www.stremio.com/downloads'
  name 'Stremio'
  homepage 'https://www.strem.io/'

  app 'Stremio.app'
end

cask 'stremio' do
  version '3.6.5'
  sha256 '079a39585cd50be2b914ecb1437295f87b894fa28816925d2382232bb0625fe8'

  url "https://dl.strem.io/Stremio%20#{version}.dmg"
  name 'Stremio'
  homepage 'https://www.strem.io/'

  app 'Stremio.app'
end

cask 'brisync' do
  version '1.0.0'
  sha256 'f53b0099ddf6b508e6c4de8a036edaea05a4b233fe5ae4a37bf778958aee1e4d'

  url "https://github.com/czarny/Brisync/releases/download/v#{version}/Brisync.zip"
  appcast 'https://github.com/czarny/Brisync/releases.atom'
  name 'Brisync'
  homepage 'https://github.com/czarny/Brisync/'

  app 'Brisync.app'

  zap trash: '~/.brisync.json'
end

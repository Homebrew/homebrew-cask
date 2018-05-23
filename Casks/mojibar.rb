cask 'mojibar' do
  version '2.6.2'
  sha256 '28e9811bb9a43c15f7a7ba9100e86cc5f45e4f53c093cd9f08972fda8694b363'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '8a9b3dd42d021da9443792f418635c9c5cbea6514bdf75c63d8638a765e8b592'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'

  app 'Mojibar-darwin-x64/Mojibar.app'
end

cask 'iexplorer' do
  version '3.9.9.1'
  sha256 '636d6f22e2844677c7f76440e1d5094b2a4365a6e026094d1f6eb7feefb62139'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: '8b87ff2576664b75296e953006fe6fc236afc218e783d46dd8314c30ab13c097'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end

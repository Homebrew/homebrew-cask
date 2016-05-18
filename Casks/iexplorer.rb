cask 'iexplorer' do
  version '3.9.8.0'
  sha256 '93a9a6e9ba083dcffc22c8f02aa17576d456a6cccce2a423f6c41497bdd9135f'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: '5681a4d7b14edacfc86a43ad3929b4b798e6ecc30db80f7f58e40bac0746ec65'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end

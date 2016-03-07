cask 'iexplorer' do
  version '3.9.6.0'
  sha256 'd53ca70580f712e207385c9a46bccd4bc3b909e82f914920932b2415ef2e5dc8'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: 'd704557916a70525b9e089e964714b7133ee8aa17793f48942a0217712516b00'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end

cask 'adguard' do
  version '1.2.0'
  sha256 'd25f2857fea39c9489546e518225ebf1c772f7d032239bc4f7d341ba2ba1f848'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: '50d247400968bd4da37b7ed0c871ccbf101643c4637453bdfb4babfb30c6eb50'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'
  license :commercial

  app 'Adguard.app'
end

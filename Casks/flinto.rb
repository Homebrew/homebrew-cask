cask 'flinto' do
  version '26.0.4'
  sha256 '35d7ba472ec4d26f9bc6a0c51ee8a67f18b37805615c0466896352fdd8b4bf76'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  appcast 'https://www.flinto.com/appcast.rss'
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

cask 'flinto' do
  version '26.0.2'
  sha256 'b4600f98f3445e2a202ad3612f2d3fa5a8f838df6b8995d7aeea93af37075310'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  appcast 'https://www.flinto.com/appcast.rss'
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

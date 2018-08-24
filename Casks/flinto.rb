cask 'flinto' do
  version '26.0.3'
  sha256 '5aea4dd637c5e6787d0238f1830c8681748680e9607d04f060e93dd0c3d95855'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  appcast 'https://www.flinto.com/appcast.rss'
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

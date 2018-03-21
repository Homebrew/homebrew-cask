cask 'flinto' do
  version '25.3'
  sha256 '0b7fee6b368a1f5cbc46b8c110529bbe84be0f92c75d2810c1ca013d5cb903ce'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

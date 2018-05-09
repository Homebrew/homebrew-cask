cask 'flinto' do
  version '25.5'
  sha256 '2181a70141b54614d13eb2277fd626db533dccdfa760a168586ca82e7d34f8b4'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

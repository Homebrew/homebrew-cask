cask 'flinto' do
  version '26.0.5'
  sha256 '91349e9ab3e6804aef362baf37706be2eaf9a2f76b1626c3bcf791e9c97eeea0'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  appcast 'https://www.flinto.com/appcast.rss'
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  depends_on macos: '>= :sierra'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

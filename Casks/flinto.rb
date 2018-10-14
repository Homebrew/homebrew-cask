cask 'flinto' do
  version '26.0.6'
  sha256 '748769db962acb08185aa99988522e875736c40d65ed5e0a225336bbc706935a'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  appcast 'https://www.flinto.com/appcast.rss'
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  depends_on macos: '>= :sierra'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

cask 'flinto' do
  version '27.1'
  sha256 '75701da0e0e206ce1e4c24df5d034fe9e051c6beb33e0e45119f07c22b3e9854'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  appcast 'https://www.flinto.com/appcast.rss'
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  depends_on macos: '>= :high_sierra'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

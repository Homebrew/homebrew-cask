cask 'flinto' do
  version '26.0'
  sha256 'eb7f4cbdeab548957a6ae294cfbe9a6e40b78711be9ed46400537faa70addeef'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  appcast 'https://www.flinto.com/appcast.rss'
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

cask 'flinto' do
  version '25.4'
  sha256 '16e1384935b9df537454582667653be92bdc4ac028797787e745b3db48d086ab'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

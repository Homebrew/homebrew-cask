cask 'flinto' do
  version '24.6'
  sha256 'c159096d06c248028b8ee169e98cf22dfe1804873d244deef0e1590e6bf9e213'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

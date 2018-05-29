cask 'flinto' do
  version '25.7'
  sha256 '2f137dea2b5423d1c4e4100b7f13b63ad4f3f6e3f8e91246de9697666d03a0c5'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

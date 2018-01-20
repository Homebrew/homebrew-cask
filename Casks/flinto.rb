cask 'flinto' do
  version '24.2'
  sha256 'a7c60c1535506bf7a158c930e7811ae52b559652c0abbec10678da11df200a39'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

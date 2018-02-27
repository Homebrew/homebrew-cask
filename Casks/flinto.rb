cask 'flinto' do
  version '25.0'
  sha256 'e325fc804d5744736dac7e27ac594130c5c9c75e9915ae04843f2225e69f926c'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

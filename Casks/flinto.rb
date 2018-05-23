cask 'flinto' do
  version '25.6'
  sha256 '2180df20938a06ac557686d9a103656067c8820a7e678a1a1e2d0bd1d9377929'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

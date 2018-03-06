cask 'flinto' do
  version '25.2'
  sha256 'ab7080304e10350f291df384b445dee5302803a25fc81cb4d4a5cd7b470b032d'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap trash: '~/Library/Application Scripts/com.flinto.Flinto'
end

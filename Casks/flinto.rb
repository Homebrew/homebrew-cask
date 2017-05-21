cask 'flinto' do
  version '2.2.3'
  sha256 '6682b9929cd8adaf28423b4aba9c29c90af9e0e2395888008db2fd54a996c509'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*'

  zap delete: '~/Library/Application Scripts/com.flinto.Flinto'
end

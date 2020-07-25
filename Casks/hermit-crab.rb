cask 'hermit-crab' do
  version '1.0.2'
  sha256 '5e33cc918264fb39c97eb256e899f971a504f89b907429627e15f4b8ba1d8ada'

  url "https://belkadan.com/hermitcrab/updates/HermitCrab-#{version}.zip"
  appcast 'https://belkadan.com/hermitcrab/updates/'
  name 'Hermit Crab'
  homepage 'https://belkadan.com/hermitcrab/'

  auto_updates true

  app 'Hermit Crab.app'

  uninstall quit: 'com.belkadan.Hermit-Crab'

  zap trash: '~/Library/Preferences/com.belkadan.Hermit-Crab.plist'
end

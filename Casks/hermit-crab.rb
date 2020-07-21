cask 'hermit-crab' do
  version '1.0'
  sha256 '83fa55ced8d2ba8e448a714a1ab5a83719c4d95ebddf8a188e9e093719bd0198'

  url "https://belkadan.com/hermitcrab/updates/HermitCrab-#{version}.zip"
  appcast 'https://belkadan.com/hermitcrab/updates/'
  name 'Hermit Crab'
  homepage 'https://belkadan.com/hermitcrab/'

  auto_updates true

  app 'Hermit Crab.app'

  uninstall quit: 'com.belkadan.Hermit-Crab'

  zap trash: '~/Library/Preferences/com.belkadan.Hermit-Crab.plist'
end

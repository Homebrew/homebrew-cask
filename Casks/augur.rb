cask 'augur' do
  version '1.12.0'
  sha256 'c4382e68be6c147bbd8f918556ba0ee3c7ec6bf617149cf9954da98a09dc0f46'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end

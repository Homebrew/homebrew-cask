cask 'augur' do
  version '1.16.2'
  sha256 '31f638f61f6c1f35cdad7c9fed33ba7eb2305b8b0ad51ab4f8b1fdc44f3e0749'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end

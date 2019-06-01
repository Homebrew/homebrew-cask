cask 'augur' do
  version '1.14.0'
  sha256 'c15d91d150f3cc3581b07dd8a7d94238dc7f2ac65bc2089d1382de017f3b20d7'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end

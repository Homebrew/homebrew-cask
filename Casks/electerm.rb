cask 'electerm' do
  version '1.3.38'
  sha256 '601949434529fbf823035ed07df5e7bb18646d377955691632e9f3983f6547d4'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

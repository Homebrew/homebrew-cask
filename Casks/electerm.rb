cask 'electerm' do
  version '1.3.1'
  sha256 '5acb33bbb49534de18b77277aa57a3f1bae31127bf8ebbd3aaa838abad39ced9'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

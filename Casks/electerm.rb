cask 'electerm' do
  version '1.0.21'
  sha256 '48645b956ff7358c9430af4198a7d310dde5eccdcbc98c35558dbb07048580a7'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

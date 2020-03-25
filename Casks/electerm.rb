cask 'electerm' do
  version '1.3.7'
  sha256 'd6f6e1d45d5c0665c4bb9bb536d150bc9077b1e5c73821415458076b7fdb8faf'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

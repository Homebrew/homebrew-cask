cask 'electerm' do
  version '1.3.31'
  sha256 '21be628d8d51c7427201befc018334ce9245fc1756cebe0ce2ded65e80088524'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

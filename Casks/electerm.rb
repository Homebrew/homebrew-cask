cask 'electerm' do
  version '1.3.21'
  sha256 '3a53a8075abb93cb66c876c5c0b2506fe75a90366e2110a61b25f0aed581d933'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

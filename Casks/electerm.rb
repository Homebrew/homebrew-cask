cask 'electerm' do
  version '1.3.49'
  sha256 'bd9a9031265e739f91e1919a7855817b1f5d25d7220e47d42494c086d45f5b13'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

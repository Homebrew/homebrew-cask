cask 'electerm' do
  version '1.0.24'
  sha256 '95270f3dd048816ac13ec0f13fc7b2250bbf4f6e263c042b4dc3aeaeed42725d'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

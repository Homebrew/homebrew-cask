cask 'electerm' do
  version '1.0.27'
  sha256 '48b6ee527f77b6575bd1e725a8cd6c3a70bc13049a65ff33cf8ef6c78bd7d080'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

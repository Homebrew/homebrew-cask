cask 'augur' do
  version '1.15.1'
  sha256 '4c14d86a84085dcc792bbac8290afb5a0d2ab2236ce0595f18cea954919a391b'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end

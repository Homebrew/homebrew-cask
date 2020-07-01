cask 'electerm' do
  version '1.3.45'
  sha256 'e83ee994991a2980d563d3cfaa96f782f5abf11ea6c87e17a7b21714430f3b08'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

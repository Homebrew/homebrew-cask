cask 'electerm' do
  version '1.3.34'
  sha256 '7c4bbab07b474801d0aeb07f302671b442499fd0ec637a8c0e7868506dfbf268'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

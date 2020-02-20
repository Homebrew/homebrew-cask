cask 'electerm' do
  version '1.0.28'
  sha256 '4ab19616dc4b23376bada28f63627d13af389d96d2668d99985a9a5b83bc6bb7'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

cask 'electerm' do
  version '1.0.33'
  sha256 'affc4eafb13c7f3fa828aaa855904081548c4710ce77f57ae4b46460006b3f65'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

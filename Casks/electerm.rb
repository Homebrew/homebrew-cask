cask 'electerm' do
  version '1.0.31'
  sha256 '779df13757d5665f68f9fab78d43b2c6c33952efd948a4a54bc55447848d1402'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

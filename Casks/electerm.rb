cask 'electerm' do
  version '1.3.10'
  sha256 'c022fdaf6fdc017be4dab0863ade4925f1095176a7632b53c23bf82134c0c410'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end

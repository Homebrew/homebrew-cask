cask 'comma-chameleon' do
  version '0.4.0'
  sha256 '63d39758bad01bc439b55f53d377121e3d0e6159aef4551058d311033ee49bd8'

  # github.com/theodi/comma-chameleon was verified as official when first introduced to the cask
  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/comma-chameleon-darwin-x64.tar.gz"
  appcast 'https://github.com/theodi/comma-chameleon/releases.atom',
          checkpoint: 'cc3f440579531be0269dc596023156ced8164ecb1e6ce71560224a0bade4b3da'
  name 'Comma Chameleon'
  homepage 'http://comma-chameleon.io/'
  license :mit

  app 'comma-chameleon-darwin-x64/comma-chameleon.app'
end

cask 'comma-chameleon' do
  version '0.4.0'
  sha256 '63d39758bad01bc439b55f53d377121e3d0e6159aef4551058d311033ee49bd8'

  # github.com/theodi/comma-chameleon was verified as official when first introduced to the cask
  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/comma-chameleon-darwin-x64.tar.gz"
  appcast 'https://github.com/theodi/comma-chameleon/releases.atom',
          checkpoint: 'c86edf15837b16ad7457a3be1388f5d7a5ba35dcdfdc12796a559fe8279f8ea1'
  name 'Comma Chameleon'
  homepage 'https://comma-chameleon.io/'

  app 'comma-chameleon-darwin-x64/comma-chameleon.app'
end

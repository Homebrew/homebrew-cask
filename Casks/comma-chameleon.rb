cask 'comma-chameleon' do
  version '0.4.0'
  sha256 '63d39758bad01bc439b55f53d377121e3d0e6159aef4551058d311033ee49bd8'

  url 'https://github.com/theodi/comma-chameleon/releases/download/0.4.0/comma-chameleon-darwin-x64.tar.gz'
  name 'Comma Chameleon'
  homepage 'http://comma-chameleon.io/'
  license :mit

  app 'comma-chameleon-darwin-x64/comma-chameleon.app'
end

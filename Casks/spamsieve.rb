cask :v1 => 'spamsieve' do

  if MacOS.release <= :tiger
    version '2.9.6'
    sha256 'f060af29ab260450f0c0a906ada3e60408c9b6cd871e1df272dde2521bafeed3'

    url "http://c-command.com/downloads/SpamSieve-#{version}-tiger.dmg"
  elsif MacOS.release == :leopard
    version '2.9.14'
    sha256 '9acd154e5c379b21ca752ff70bd59766cc2f91532a10ea12dce87f71101d2f11'

    url "http://c-command.com/downloads/SpamSieve-#{version}-leopard.dmg"
  else
    version '2.9.19'
    sha256 '93a2dd7f1cabab73ee354e27559fca2d524c079b7b5a7420fdb38a02ba399f1a'

    url "http://c-command.com/downloads/SpamSieve-#{version}.dmg"
  end

  name 'SpamSieve'
  homepage 'http://c-command.com/spamsieve/'
  license :commercial

  app 'SpamSieve.app'
end

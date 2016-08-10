cask 'spamsieve' do
  if MacOS.version <= :tiger
    version '2.9.6'
    sha256 'f060af29ab260450f0c0a906ada3e60408c9b6cd871e1df272dde2521bafeed3'

    url "https://c-command.com/downloads/SpamSieve-#{version}-tiger.dmg"
  elsif MacOS.version == :leopard
    version '2.9.14'
    sha256 '9acd154e5c379b21ca752ff70bd59766cc2f91532a10ea12dce87f71101d2f11'

    url "https://c-command.com/downloads/SpamSieve-#{version}-leopard.dmg"
  else
    version '2.9.24'
    sha256 '3d097a43396c3c9ba75f3a6f12092562372b7538ac58e8c42e95b39f06d1725f'

    url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  end

  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'
  license :commercial

  app 'SpamSieve.app'
end

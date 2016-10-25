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
    version '2.9.26'
    sha256 '2b25241dd355ed3d2c868e626fb766587d68ca6cd3704fe9fe6b302ddcac02ff'

    url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  end

  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'

  app 'SpamSieve.app'
end

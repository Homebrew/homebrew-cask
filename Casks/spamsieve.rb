cask :v1 => 'spamsieve' do

  if MacOS.release <= :tiger
    version '2.9.6'
    sha256 'f060af29ab260450f0c0a906ada3e60408c9b6cd871e1df272dde2521bafeed3'

    url "https://c-command.com/downloads/SpamSieve-#{version}-tiger.dmg"
  elsif MacOS.release == :leopard
    version '2.9.14'
    sha256 '9acd154e5c379b21ca752ff70bd59766cc2f91532a10ea12dce87f71101d2f11'

    url "https://c-command.com/downloads/SpamSieve-#{version}-leopard.dmg"
  else
    version '2.9.20'
    sha256 'd9515b853148f14c384052217c9b528c0ca878f044ad58ed0feae49f69494770'

    url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  end

  name 'SpamSieve'
  homepage 'https://c-command.com/spamsieve/'
  license :commercial

  app 'SpamSieve.app'
end

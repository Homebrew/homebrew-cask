class HearthstoneEu < Cask
  url 'http://dist.blizzard.com/downloads/hs-installers/a6029a1d625c79252defff3914fb6e67/retail.1/Hearthstone-Setup-enGB.zip'
  homepage 'http://eu.battle.net/hearthstone/en/'
  version 'latest'
  no_checksum
  caskroom_only true
  caveats do
    manual_installer 'Hearthstone-Setup-enGB.app'
  end
end

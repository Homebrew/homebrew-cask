cask 'obinslab-starter' do
  version '1.1.3'
  sha256 'd59f87eeb0abce38653f38a7cc99415d0e64aaf528314a30d7f2b451d488d907'

  url "http://releases.obins.net/occ/darwin/x64/ObinsKit_#{version}_x64.dmg"
  appcast 'http://en.obins.net/obinskit'
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinskit'

  app 'Obinskit.app'
end

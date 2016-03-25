cask 'double-commander' do
  version '0.7.0-6700'
  sha256 '0fa45588276a7d8880d210fd16e3b8e426b7bf192cfbe6cdd40088beb80598fd'

  url "http://downloads.sourceforge.net/sourceforge/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'
  license :gpl

  app 'Double Commander.app'
end

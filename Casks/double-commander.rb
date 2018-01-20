cask 'double-commander' do
  version '0.8.1-7950'
  sha256 '0767fbfd1e416223cdf3fb42336da0ef490fec2c2220cb330ed5dbc5c01b1ca1'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: '8dbc2807af6a44ab20b7960756fc54675347687ce2377f8fc5883e1f8651b51d'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'

  depends_on macos: '>= :snow_leopard'

  app 'Double Commander.app'
end

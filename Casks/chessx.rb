cask 'chessx' do
  version '1.4.6'
  sha256 '86bdd57667bf73d460fa39b45e1cdcf70fb122aeaed255d18ace79389271864b'

  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/chessx/rss?path=/chessx'
  name 'ChessX'
  homepage 'http://chessx.sourceforge.net/'

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end

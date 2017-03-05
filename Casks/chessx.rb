cask 'chessx' do
  version '1.4.4'
  sha256 '1304632fa6f6cb6922882de477aab002f2793c18b99718dde86eb08d94432ca2'

  url "https://downloads.sourceforge.net/chessx/chessx/#{version}/chessx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/chessx/rss?path=/chessx',
          checkpoint: 'a48aa2be2eb2885edaa179620b9cdfc6d8b33224d1db078d3ccea79b7615f798'
  name 'ChessX'
  homepage 'http://chessx.sourceforge.net/'

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end

cask 'chessx' do
  version '1.3.2'
  sha256 '7719eaf448d0b974d524fb3c180fb748b18494afe9a36c34b17ea138dbdad00f'

  url "http://downloads.sourceforge.net/project/chessx/chessx/#{version}/chessx-#{version}.dmg"
  name 'ChessX'
  homepage 'http://chessx.sourceforge.net/'
  license :gpl

  pkg 'chessx-installer.mpkg'

  uninstall pkgutil: 'net.sourceforge.chessx'
end

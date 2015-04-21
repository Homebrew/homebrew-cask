cask :v1 => 'chessx' do
  version '1.3.0'
  sha256 'eff40b86e6ee0eb00954820caa1938b39e85da8fa27e53f5d359de5f0b58a451'
  url "http://downloads.sourceforge.net/project/chessx/chessx/#{version}/chessx-#{version}.dmg"

  name 'ChessX'
  homepage 'http://chessx.sourceforge.net/'
  license :gpl

  pkg 'chessx-installer.mpkg'
  uninstall :pkgutil => 'net.sourceforge.chessx'
end

cask :v1 => 'hex' do
  version :latest
  sha256 :no_check

  url 'http://dl.hex.gameforge.com/HexInstaller.dmg'
  homepage 'http://hextcg.com/'
  license :unknown

  app 'Hex.app'
end

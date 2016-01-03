cask 'hex' do
  version :latest
  sha256 :no_check

  # gameforge.com is the official download host per the vendor homepage
  url 'http://dl.hex.gameforge.com/HexInstaller.dmg'
  name 'HEX'
  homepage 'https://hextcg.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hex.app'
end

cask :v1 => 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.2.0'
  sha256 '8d8d8d4ab873cd8390bc3b6b999dcc5e2a2a15597012ea18b1ce43d7bcf701a0'

  url "http://downloads.sourceforge.net/sourceforge/kid3/kid3-#{version}-Darwin.dmg"
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'
  license :gpl

  app 'Kid3.app'
end

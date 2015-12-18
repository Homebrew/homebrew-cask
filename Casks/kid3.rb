cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.3.0'
  sha256 'c9469bcab5d2654e0ca324bf44b1fe8d0c4e7e59cf91ae067bf335010307dba9'

  url "http://downloads.sourceforge.net/sourceforge/kid3/kid3-#{version}-Darwin.dmg"
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'
  license :gpl

  app 'kid3.app'
end

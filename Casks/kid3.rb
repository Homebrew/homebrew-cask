cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.3.1'
  sha256 '2bd2349679f6cfc81b1b2484a7ad85263df9c130b90e0d70dad93e16947a7348'

  url "http://downloads.sourceforge.net/sourceforge/kid3/kid3-#{version}-Darwin.dmg"
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'
  license :gpl

  app 'kid3.app'
end

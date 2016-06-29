cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.4.1'
  sha256 '607d2cdf682d7c8b7df20f08466d4fe1e9f0c27ced66dbe766668752d600173e'

  url "http://downloads.sourceforge.net/sourceforge/kid3/kid3-#{version}-Darwin.dmg"
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'
  license :gpl

  app 'kid3.app'
end

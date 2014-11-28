cask :v1 => 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.1.1'
  sha256 '1a27b9743a4029221601fb872a38aca235a23f8234c7a07fa0cb547eb58129c6'

  url "https://downloads.sourceforge.net/sourceforge/kid3/kid3-#{version}-Darwin.dmg"
  homepage 'http://kid3.sourceforge.net/'
  license :oss

  app 'Kid3.app'
end

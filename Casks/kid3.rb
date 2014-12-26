cask :v1 => 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.1.2'
  sha256 'da90a482d92164e3fbc2493b10aab9ddf3669f3feec14fbfdf4eafbed78aab95'

  url "http://downloads.sourceforge.net/sourceforge/kid3/kid3-#{version}-Darwin.dmg"
  homepage 'http://kid3.sourceforge.net/'
  license :oss

  app 'Kid3.app'
end

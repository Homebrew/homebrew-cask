class DatastaxDevcenter < Cask
  if Hardware::CPU.is_32_bit?
    url 'http://downloads.datastax.com/devcenter/DevCenter-1.1.1-macosx-x86.tar.gz'
    sha256 'e2ec7a401bbbf733f3f21bc2baa3ea7f95e02f44982439f14c47f92a7c437c57'
  else
    url 'http://downloads.datastax.com/devcenter/DevCenter-1.1.1-macosx-x86_64.tar.gz'
    sha256 'e2f2ca121ead2b9433da1aae22a30f5b513ae5c780cdea9d363b4d5614bfe755'
  end
  version '1.1'
  homepage 'http://www.datastax.com/what-we-offer/products-services/devcenter'
  license :unknown
  app 'devcenter/DevCenter.app'
end
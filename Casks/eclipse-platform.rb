cask :v1 => 'eclipse-platform' do
  version '4.4.2-201502041700'

  if Hardware::CPU.is_32_bit?
    sha256 '8ea83c03a714300008e2d2859a6be9238cdfe7a74cdb0bf7b4ef9e3e3bafcf5f'
    url "http://download.eclipse.org/eclipse/downloads/drops#{version.to_i}/R-#{version}/eclipse-SDK-#{version.sub(%r{-.*},'')}-macosx-cocoa.tar.gz"
  else
    sha256 'e49cc9b6379a4eed7613f997b0b4c415f34bb858069a134f8ad46b1585761395'
    url "http://download.eclipse.org/eclipse/downloads/drops#{version.to_i}/R-#{version}/eclipse-SDK-#{version.sub(%r{-.*},'')}-macosx-cocoa-x86_64.tar.gz"
  end

  name 'Eclipse'
  name 'Eclipse SDK'
  homepage 'http://eclipse.org'
  license :eclipse

  app 'eclipse/Eclipse.app'
end

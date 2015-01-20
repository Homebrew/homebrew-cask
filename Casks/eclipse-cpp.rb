cask :v1 => 'eclipse-cpp' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 'bc208f2d3cedeecd721dc8e19d1d1a379ba5b3a295d5622071f8f5a2c1b98905'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-cpp-luna-SR1a-macosx-cocoa.tar.gz'
  else
    sha256 'bd2fe24d261f8ae7e49cd33cf3b111aad279bdc64cc31efb2cd1fea789d5ae46'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-cpp-luna-SR1a-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end

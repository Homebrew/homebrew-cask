cask :v1 => 'eclipse-cpp' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 '5240642f6b27ace256a02799c27af49f3b9cc3036259247bdd9e848bbea999c7'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-cpp-luna-SR1a-macosx-cocoa.tar.gz'
  else
    sha256 '8c69c32083943c27c38c38808e652020443256c511f28832ee6a7bc31b835241'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-cpp-luna-SR1a-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end

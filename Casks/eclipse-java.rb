cask :v1 => 'eclipse-java' do
  version '4.4.0'

  if Hardware::CPU.is_32_bit?
    sha256 '11ebf6c2deb9d0f656ddf0ced4b65e340a2ec80426786440f687f164bd973b1e'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-java-luna-R-macosx-cocoa.tar.gz'
  else
    sha256 '4902bdb5eb64dbcef86b10838a3734c1148d3d85ae8454f71a6929292de43784'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-java-luna-R-macosx-cocoa-x86_64.tar.gz'
  end

  homepage 'http://eclipse.org/'
  license :unknown

  app 'eclipse/Eclipse.app'
end

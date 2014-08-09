class EclipseJava < Cask
  if Hardware::CPU.is_32_bit?
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-java-luna-R-macosx-cocoa.tar.gz'
    sha256 '11ebf6c2deb9d0f656ddf0ced4b65e340a2ec80426786440f687f164bd973b1e'
  else
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-java-luna-R-macosx-cocoa-x86_64.tar.gz'
    sha256 '4902bdb5eb64dbcef86b10838a3734c1148d3d85ae8454f71a6929292de43784'
  end
  version '4.4.0'
  homepage 'http://eclipse.org/'
  link 'eclipse/Eclipse.app'
end

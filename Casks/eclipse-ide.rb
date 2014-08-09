class EclipseIde < Cask
  if Hardware::CPU.is_32_bit?
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-standard-luna-R-macosx-cocoa.tar.gz'
    sha256 'c902ee4d9f753b2bc48f7194ea9f5bb98a264a984f6aaead710f8b601c574505'
  else
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-standard-luna-R-macosx-cocoa-x86_64.tar.gz'
    sha256 'c902ee4d9f753b2bc48f7194ea9f5bb98a264a984f6aaead710f8b601c574505'
  end
  version '4.4.0'
  homepage 'http://eclipse.org/'
  link 'eclipse/Eclipse.app'
end

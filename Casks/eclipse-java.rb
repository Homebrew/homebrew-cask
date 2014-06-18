class EclipseJava < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://download.eclipse.org/technology/epp/downloads/release/kepler/SR2/eclipse-java-kepler-SR2-macosx-cocoa-x86_64.tar.gz'
    sha256 '6147eda7fb39e238cb23534ca7605673b45181152202b05520ff2963362a887a'
  else
    url 'http://download.eclipse.org/technology/epp/downloads/release/kepler/SR2/eclipse-java-kepler-SR2-macosx-cocoa.tar.gz'
    sha256 'b04e3ba5b9aed2bef85f4e66fb9f7211779fb084828cee7b7d58329c541f5205'
  end
  version '4.3.2'
  homepage 'http://eclipse.org/'
  link 'eclipse/Eclipse.app'
end

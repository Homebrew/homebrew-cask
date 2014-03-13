class EclipseIde < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://download.eclipse.org/technology/epp/downloads/release/kepler/SR2/eclipse-standard-kepler-SR2-macosx-cocoa-x86_64.tar.gz'
    version '4.3.2'
    sha256 '7fd761853ae7f5b280963059fcf8da6cea14c93563a3dfe7cc3491a7a977966e'
  else
    url 'http://download.eclipse.org/technology/epp/downloads/release/kepler/SR2/eclipse-standard-kepler-SR2-macosx-cocoa.tar.gz'
    version '4.3.2'
    sha256 '0a1a5b6924daa1a3bd2482a537fac6f59c177da2265ed13f57cf0e5a5772b903'
  end
  homepage 'http://eclipse.org/'
  link 'eclipse/Eclipse.app'
end

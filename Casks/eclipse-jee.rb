class EclipseJee < Cask
  version 'latest'
  sha256 :no_check

  if Hardware::CPU.is_64_bit?
    url 'http://download.eclipse.org/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-macosx-cocoa-x86_64.tar.gz'
  else
    url 'http://download.eclipse.org/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-macosx-cocoa.tar.gz'
  end

  homepage 'http://eclipse.org/'

  link 'eclipse/Eclipse.app'
end

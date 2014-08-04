class EclipseJee < Cask
  version 'latest'
  sha256 :no_check

  if Hardware::CPU.is_64_bit?
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-macosx-cocoa-x86_64.tar.gz'
  else
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-macosx-cocoa.tar.gz'
  end

  homepage 'http://eclipse.org/'

  link 'eclipse/Eclipse.app'
end

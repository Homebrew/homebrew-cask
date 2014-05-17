class EclipseJee < Cask
  if Hardware::CPU.is_64_bit?
    url 'http://download.eclipse.org/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-macosx-cocoa-x86_64.tar.gz'
    version '4.3.2'
    sha256 'd18c5b4249a782a36c2d7bb377871393acd5dd552a195fc49b5b944f04874fbf'
  else
    url 'http://download.eclipse.org/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-macosx-cocoa.tar.gz'
    version '4.3.2'
    sha256 '39cecf5fdca126e945c72d09f6b036ac1efb65963ef8e6f0491ff1a9580f77a3'
  end
  homepage 'http://eclipse.org/'
  link 'eclipse/Eclipse.app'
end

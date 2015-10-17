cask :v1 => 'eclipse-java' do
  version '4.5.1'
  sha256 '557070cc428715ae32915d7eb72f1720ef01d3979b5b5d6dd3f627710970d6f5'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/1/eclipse-java-mars-1-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse IDE for Java Developers'
  homepage 'https://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

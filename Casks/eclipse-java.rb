cask :v1 => 'eclipse-java' do
  version '4.5'
  sha256 '6145fcd4e15f03dac50898fe489e56b8cbe5ef152f191907e3b9ee52a3c1c09e'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-java-mars-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse IDE for Java Developers'
  homepage 'https://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

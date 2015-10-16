cask :v1 => 'eclipse-ide' do
  version '4.5'
  sha256 'd50777bfa13728d46f6fbfb82309aa53d42661e694e1bf379e83db578efaba16'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-committers-mars-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

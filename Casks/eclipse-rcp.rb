cask :v1 => 'eclipse-rcp' do
  version '4.5'
  sha256 '6142fa040b9166b08991a1224ee30822450fec4eedc1fe4b5dcca7333dfe3af7'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-rcp-mars-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse for RCP and RAP Developers'
  homepage 'http://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

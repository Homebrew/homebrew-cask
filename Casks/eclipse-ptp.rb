cask :v1 => 'eclipse-ptp' do
  version '4.5'
  sha256 'a3a65de4af4b2db327732cfec8c0ea4d2aa4ada66089ce004b42eac4e5727e8b'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-parallel-mars-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse Parallel Tools Platform'
  homepage 'http://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

cask 'eclipse-ptp' do
  version '4.6.0'
  sha256 '7eab1605dce524abb872185d184e8033b02e8a2c9fd23005a4c15224b4712803'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-parallel-neon-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse for Parallel Application Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

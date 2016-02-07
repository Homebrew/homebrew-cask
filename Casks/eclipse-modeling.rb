cask 'eclipse-modeling' do
  version '4.5.1'
  sha256 'cc3478ef7c2f220d3ee0d90bed27892db2b3a2386d2e7d6fe48b8f375c71da7b'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/1/eclipse-modeling-mars-1-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse Modeling Tools'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

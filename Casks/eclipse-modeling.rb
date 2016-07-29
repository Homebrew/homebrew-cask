cask 'eclipse-modeling' do
  version '4.6.0'
  sha256 'dcd7ab2331f45b8c9df5324209bf304a7eb7de8e0f7eaa843009aba51ee62ca6'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-modeling-neon-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse Modeling Tools'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

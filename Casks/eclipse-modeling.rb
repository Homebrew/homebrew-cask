cask 'eclipse-modeling' do
  version '4.5.2'
  sha256 'd413e761c3c009edce3c8aac0af6b4c63939623d41c2ab20228417d618e9f7d9'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-modeling-mars-2-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse Modeling Tools'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

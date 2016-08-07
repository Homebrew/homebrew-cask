cask 'eclipse-ide' do
  version '4.6.0'
  sha256 '8a8a07e3cd597ffc937f7074eb60713343217976a8f167645d1ed3bd543bcf97'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-committers-neon-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

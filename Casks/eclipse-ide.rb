cask 'eclipse-ide' do
  version '4.5.2'
  sha256 '70edececaf847a262e6bb5e5b952344155699adf8d267f98cb700f21e1f2c1e0'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-committers-mars-2-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

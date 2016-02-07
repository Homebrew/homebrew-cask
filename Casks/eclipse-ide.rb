cask 'eclipse-ide' do
  version '4.5.1'
  sha256 'ec2a963367f3ee99429f151d0af3bb6d70d0550f27e2d7ab65730b429b54c9a9'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/1/eclipse-committers-mars-1-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

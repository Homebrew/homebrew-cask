cask 'eclipse-java' do
  version '4.6.0'
  sha256 'cc776030aac93ca313c2e7791f3368af399d595c6979e421ca7c36c180de3c96'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-java-neon-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE for Java Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

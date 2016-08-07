cask 'eclipse-jee' do
  version '4.6.0'
  sha256 'ec62c9734396fb99ae5fc8af8731bb87d19d4d40579aeac69b8fe1447c51a614'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE for Java EE Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'

  caveats do
    depends_on_java
  end
end

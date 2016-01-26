cask 'eclipse-jee' do
  version '4.5.1'
  sha256 'efea4c0c2287e0975d5aa30db465048eab012803804a3cdabaefb1ea223eba16'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/1/eclipse-jee-mars-1-macosx-cocoa-x86_64.tar.gz&r=1'
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

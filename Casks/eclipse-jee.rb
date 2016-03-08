cask 'eclipse-jee' do
  version '4.5.2'
  sha256 'e5989046a9518b691b38fb718f7e60a4c4f593176115807579979e14ee7c15ad'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-macosx-cocoa-x86_64.tar.gz&r=1'
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

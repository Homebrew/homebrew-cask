cask 'eclipse-cpp' do
  version '4.5.2'
  sha256 '894726b6d85794af3a17b3d499c9143683a0a27074c9ff734146d81c5b4b631e'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-cpp-mars-2-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

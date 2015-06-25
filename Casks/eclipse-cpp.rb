cask :v1 => 'eclipse-cpp' do
  version '4.5'
  sha256 '6732013ac98123004f8053d1d06452d2b5bffb13077f4db22a9358479c7a2d31'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-cpp-mars-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'http://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

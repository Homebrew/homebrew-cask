cask :v1 => 'eclipse-cpp' do
  version '4.5.1'
  sha256 'd485444edbd6761da697dd55e974f8a45691f6bce515880eeb4216ea5ef6cbb5'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/1/eclipse-cpp-mars-1-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

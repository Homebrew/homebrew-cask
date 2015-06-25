cask :v1 => 'eclipse-modeling' do
  version '4.5'
  sha256 '5e8b32911af23b7361b686f226308929a165f71dfcf7aa3c0e91ddd311491302'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-modeling-mars-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse Modeling Tools'
  homepage 'http://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

cask :v1 => 'eclipse-jee' do
  version '4.5'
  sha256 '84fb3aedf7eb7202b02ca3d1d5b4f6eeaac5d36bd298759334df4f4e74e0ae51'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-jee-mars-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse IDE for Java EE Developers'
  homepage 'http://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

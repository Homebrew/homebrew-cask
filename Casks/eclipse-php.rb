cask :v1 => 'eclipse-php' do
  version '4.5.1'
  sha256 '142fdeeedf091149a6d72e0aacf28f6937fe6bef01d83cbf141be4d847172492'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/1/eclipse-php-mars-1-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse for PHP Developers'
  homepage 'https://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

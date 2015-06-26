cask :v1 => 'eclipse-php' do
  version '4.5'
  sha256 'e41dd9ffb8b6297beae731bae83c1d5e4606889183b380faf37f15dc85fb3230'

  url 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-php-mars-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse'
  name 'Eclipse for PHP Developers'
  homepage 'http://eclipse.org/'
  license :eclipse
  depends_on :macos => '>= :leopard'
  depends_on :arch => :x86_64

  app 'Eclipse.app'
end

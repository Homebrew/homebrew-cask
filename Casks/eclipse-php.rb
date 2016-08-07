cask 'eclipse-php' do
  version '4.6.0'
  sha256 '763b2e6f41277f61d377ed15aa7c6277f0a308c9b162ff00ffab46a823fc0865'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-php-neon-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse for PHP Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

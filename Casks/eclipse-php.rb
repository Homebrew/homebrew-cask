cask 'eclipse-php' do
  version '4.5.2'
  sha256 '8198b5826bba50ed93ed7dfbaa8f46bd30bbe06ec9817a4c0ebbcd2c196eea91'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-php-mars-2-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse for PHP Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end

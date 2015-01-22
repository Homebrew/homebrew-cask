cask :v1 => 'eclipse-php' do
  version '4.4.1'

  if Hardware::CPU.is_32_bit?
    sha256 '807940d356d5e860d8a282187f55c5055399af75ed35eb01a3a4bcfab44b18a4'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-php-luna-SR1a-macosx-cocoa.tar.gz'
  else
    sha256 '0c1e3461dde4dfa5faa0b2692431c195a25c58d1db6f5ac1b3547eddd20b6fff'
    url 'http://download.eclipse.org/technology/epp/downloads/release/luna/SR1a/eclipse-php-luna-SR1a-macosx-cocoa-x86_64.tar.gz'
  end

  name 'Eclipse'
  name 'Eclipse for PHP Developers'
  homepage 'http://eclipse.org/'
  license :eclipse

  app 'eclipse/Eclipse.app'
end

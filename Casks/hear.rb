class Hear < Cask
  version '1.1.6'
  sha256 'e7b5e5782020be407f456e59167770b07afc97afb0f1f7e9d226c00c524b106b'
  
  url 'https://s3.amazonaws.com/prosoft-engineering/hear/Hear_1.1.6.dmg'
  appcast 'http://www.prosofteng.com/resources/sparkle/sparkle.php?psProduct=Hear'
  homepage 'http://www.prosofteng.com/products/hear.php'

  link 'Hear.app'
  caveats <<-EOS.undent
    To uninstall open Hear.app and go to the menu Hear > Uninstall...
  EOS
end

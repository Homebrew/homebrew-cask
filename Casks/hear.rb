class Hear < Cask
  version '1.1.6'
  sha256 'e7b5e5782020be407f456e59167770b07afc97afb0f1f7e9d226c00c524b106b'

  url "https://s3.amazonaws.com/prosoft-engineering/hear/Hear_#{version}.dmg"
  appcast 'http://www.prosofteng.com/resources/sparkle/sparkle.php?psProduct=Hear'
  homepage 'http://www.prosofteng.com/products/hear.php'
  license :unknown

  app 'Hear.app'

  # todo: an uninstall stanza should be provided, and this message removed
  caveats <<-EOS.undent
    To uninstall, open Hear.app and choose the menu item "Hear > Uninstall"
  EOS
end

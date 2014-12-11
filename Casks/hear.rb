cask :v1 => 'hear' do
  version '1.1.6'
  sha256 'e7b5e5782020be407f456e59167770b07afc97afb0f1f7e9d226c00c524b106b'

  url "https://s3.amazonaws.com/prosoft-engineering/hear/Hear_#{version}.dmg"
  appcast 'http://www.prosofteng.com/resources/sparkle/sparkle.php?psProduct=Hear',
          :sha256 => '48edc9b03ce5d9709b27fb5099dc3cce25cc8920656b9cdb9a066ae7999c8d9d'
  homepage 'http://www.prosofteng.com/products/hear.php'
  license :unknown    # todo: improve this machine-generated value

  app 'Hear.app'

  # todo: an uninstall stanza should be provided, and this message removed
  caveats <<-EOS.undent
    To uninstall, open Hear.app and choose the menu item "Hear > Uninstall"
  EOS
end

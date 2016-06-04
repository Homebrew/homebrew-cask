cask 'hear' do
  version '1.3'
  sha256 'f89c07d5b6c10da35159647ec46c0060bf38b53fad41acfa5a3ff5d0231b2799'

  url "https://downloads.prosofteng.com/hear/Hear_#{version}.dmg"
  appcast 'https://www.prosofteng.com/resources/sparkle/sparkle.php?psProduct=Hear',
          checkpoint: '70573fc0b85e2ea2a06bd05bc616534d534181ae3dfd0010bbeac0980273a41b'
  name 'Hear'
  homepage 'https://www.prosofteng.com/hear/'
  license :commercial

  app 'Hear.app'

  # TODO: an uninstall stanza should be provided, and this message removed
  caveats <<-EOS.undent
    To uninstall, open Hear.app and choose the menu item "Hear > Uninstall"
  EOS
end

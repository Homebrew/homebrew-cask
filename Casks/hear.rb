cask :v1 => 'hear' do
  version '1.2.3'
  sha256 'd28019bcb73d34b7ac1b1851444d94afd2048b94138724997bedbe6dc8df93f6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/prosoft-engineering/hear/Hear_#{version}.dmg"
  appcast 'https://www.prosofteng.com/resources/sparkle/sparkle.php?psProduct=Hear',
          :sha256 => '5ff497340df135e5765942ab6f5ae4f083f06676a79be33073c00bd7c7814a88'
  name 'Hear'
  homepage 'https://www.prosofteng.com/hear/'
  license :commercial

  app 'Hear.app'

  # todo: an uninstall stanza should be provided, and this message removed
  caveats <<-EOS.undent
    To uninstall, open Hear.app and choose the menu item "Hear > Uninstall"
  EOS
end

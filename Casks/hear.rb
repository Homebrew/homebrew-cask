cask :v1 => 'hear' do
  version '1.2.1'
  sha256 '6acd179b108283a51debac3c6a4f7cf20220d4129a702ce702f06cc7e2884649'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/prosoft-engineering/hear/Hear_#{version}.dmg"
  appcast 'https://www.prosofteng.com/resources/sparkle/sparkle.php?psProduct=Hear',
          :sha256 => '48edc9b03ce5d9709b27fb5099dc3cce25cc8920656b9cdb9a066ae7999c8d9d'
  name 'Hear'
  homepage 'https://www.prosofteng.com/hear/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hear.app'

  # todo: an uninstall stanza should be provided, and this message removed
  caveats <<-EOS.undent
    To uninstall, open Hear.app and choose the menu item "Hear > Uninstall"
  EOS
end

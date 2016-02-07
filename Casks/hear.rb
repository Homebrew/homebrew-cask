cask 'hear' do
  version '1.2.4'
  sha256 '54bd28a771cd26813a9177bbd41879694a3998bf712ca6b94b18c45895bc79e6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/prosoft-engineering/hear/Hear_#{version}.dmg"
  appcast 'https://www.prosofteng.com/resources/sparkle/sparkle.php?psProduct=Hear',
          checkpoint: '70719bdb2692b7d14ac2e410c4c9b75a2849519169b819fd85f6cf99a8caaf13'
  name 'Hear'
  homepage 'https://www.prosofteng.com/hear/'
  license :commercial

  app 'Hear.app'

  # TODO: an uninstall stanza should be provided, and this message removed
  caveats <<-EOS.undent
    To uninstall, open Hear.app and choose the menu item "Hear > Uninstall"
  EOS
end

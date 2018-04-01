cask 'hear' do
  version '1.3.1'
  sha256 '2711fbc44e318db8647afdb3f81f0d117946ecbe5e4d39b81732e1518dcfdcd8'

  url "https://downloads.prosofteng.com/hear/Hear_#{version}.dmg"
  appcast 'https://www.prosofteng.com/resources/sparkle/sparkle.php?psProduct=Hear',
          checkpoint: 'fda2626909b97d07dd5ff26d881b7df42ebf51fcf112d29437819b42c62a56c3'
  name 'Hear'
  homepage 'https://www.prosofteng.com/hear-audio-enhancer/'

  app 'Hear.app'

  # TODO: an uninstall stanza should be provided, and this message removed
  caveats <<~EOS
    To uninstall, open Hear.app and choose the menu item "Hear > Uninstall"
  EOS
end

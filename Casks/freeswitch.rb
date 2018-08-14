cask 'freeswitch' do
  version '1.4.1'
  sha256 '3b6f010c94aea8abc2714ddc8f3244cfb4bab41496569730f8196b76b1bc226a'

  url "https://github.com/pablote/fs-mgmt/releases/download/v#{version}/freeswitch-desktop-osx64.zip"
  appcast 'https://github.com/pablote/fs-mgmt/releases.atom'
  name 'Freeswitch Desktop'
  homepage 'https://github.com/pablote/fs-mgmt'

  app 'Freeswitch Desktop.app'
end

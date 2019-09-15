cask 'miro-formerly-realtimeboard' do
  version :latest
  sha256 :no_check

  # desktop.realtimeboard.com was verified as official when first introduced to the cask
  url 'https://desktop.realtimeboard.com/platforms/darwin/Miro%20-%20formerly%20RealtimeBoard.dmg'
  name 'Miro'
  name 'RealtimeBoard'
  homepage 'https://miro.com/'

  app 'Miro - formerly RealtimeBoard.app'

  zap trash: [
               '~/Library/Preferences/com.electron.realtimeboard.plist',
               '~/Library/Saved Application State/com.electron.realtimeboard.savedState',
             ]
end

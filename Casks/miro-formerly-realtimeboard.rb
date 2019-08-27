cask 'miro-formerly-realtimeboard' do
  version '0.3.32'
  sha256 '5122a0ae9fe99667143eaca37989c06c7c078c7d2a83894d7b088132cb44dc94'

  url "https://desktop.realtimeboard.com/platforms/darwin/Miro%20-%20formerly%20RealtimeBoard.dmg"
  name 'Miro - formerly RealtimeBoard.dmg'
  homepage 'https://miro.com/'

  app 'Miro - formerly RealtimeBoard.app'

  zap trash: [
               '~/Library/Preferences/com.electron.realtimeboard.plist',
               '~/Library/Saved Application State/com.electron.realtimeboard.savedState'
             ]
end

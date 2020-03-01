cask 'connectmenow' do
  version '3.0.3'
  sha256 '1f92308b6c949d9ca738409acc936c6e0918e737ba7006ae2ca68a7549782744'

  url "https://www.tweaking4all.com/downloads/network/ConnectMeNow-v#{version}-macOS-64bit.dmg"
  appcast 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3'
  name 'ConnectMeNow'
  homepage 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3/'

  app 'ConnectMeNow.app'
end

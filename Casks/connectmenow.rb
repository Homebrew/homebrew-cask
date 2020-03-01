cask 'connectmenow' do
  version '3.0.3'
  sha256 'aebcb29bb939e29c492ee9b947c543843bba45c03d76bd18a3dce83e88e67924'

  url "https://www.tweaking4all.com/downloads/network/ConnectMeNow-v#{version}-macOS-64bit.dmg"
  appcast 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3'
  name 'ConnectMeNow'
  homepage 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3/'

  app 'ConnectMeNow.app'
end

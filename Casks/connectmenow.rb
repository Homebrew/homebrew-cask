cask 'connectmenow' do
  version '3.0.6'
  sha256 '71becd1c2cf2983579a3db80592b42f9ecd5cc86436a1878c861f92a15e3d4de'

  url "https://www.tweaking4all.com/downloads/network/ConnectMeNow-v#{version}-macOS-64bit.dmg"
  appcast 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3'
  name 'ConnectMeNow'
  homepage 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3/'

  app 'ConnectMeNow.app'
end

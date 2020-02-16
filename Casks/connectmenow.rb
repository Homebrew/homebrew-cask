cask 'connectmenow' do
  version '3.0.2'
  sha256 'c14b84edd99e94d679308593e75dc818170313e650e98ecbc8c918655564a99c'

  url "https://www.tweaking4all.com/downloads/network/ConnectMeNow-v#{version}-macOS.dmg"
  appcast 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3'
  name 'ConnectMeNow'
  homepage 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3/'

  app 'ConnectMeNow.app'
end

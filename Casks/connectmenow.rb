cask 'connectmenow' do
  version '3.0.3'
  sha256 '36ffe832805173f4039b1e8f0e90360e08ab181472551d5ee44bf77b6f7eac9a'

  url "https://www.tweaking4all.com/downloads/network/ConnectMeNow-v#{version}-macOS.dmg"
  appcast 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3'
  name 'ConnectMeNow'
  homepage 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3/'

  app 'ConnectMeNow.app'
end

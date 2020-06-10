cask 'connectmenow' do
  version '3.0.5'
  sha256 'b54a1289c0d81f2d873818972f88d68e0def9b438fe7af3278c85a605b4caa82'

  url "https://www.tweaking4all.com/downloads/network/ConnectMeNow-v#{version}-macOS-64bit.dmg"
  appcast 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3'
  name 'ConnectMeNow'
  homepage 'https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v3/'

  app 'ConnectMeNow.app'
end

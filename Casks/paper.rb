cask 'paper' do
  version '3.3'
  sha256 'e631d37f08c077e4538fc67b77c956e9613cf4993db578020f3c9deb31ce9549'

  url "http://paperimg.meiyuan.in/pap.er_v#{version}.dmg"
  name 'Paper'
  homepage 'https://paper.meiyuan.in/'

  app 'pap.er.app'

  uninstall quit: 'com.meiyuan.paper'

  zap trash: [
               '~/Library/Application Scripts/com.meiyuan.LauncherApplication',
               '~/Library/Application Scripts/com.meiyuan.paper',
               '~/Library/Preferences/com.meiyuan.paper.plist',
               '~/Library/Containers/com.meiyuan.LauncherApplication',
               '~/Library/Containers/com.meiyuan.paper',
             ]
end

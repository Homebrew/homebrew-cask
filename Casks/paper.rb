cask 'paper' do
  version '3.5'
  sha256 '4586ce3e5a726d61428486953dbd5800a4c26b10ada70f98f19354a15863ef95'

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

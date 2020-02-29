cask 'paper' do
  version '3.4'
  sha256 '73fa49267e2e31747ea0eea374ca6aa226ff694d7a8b78618192139293d6370e'

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

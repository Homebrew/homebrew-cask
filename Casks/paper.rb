cask 'paper' do
  version '3.3'
  sha256 '43e001456d2c2044ebc8289c4c2498cdec7eb18f84294610f32c96fb12f47cb4'

  url "http://paperimg.meiyuan.in/pap.er_v#{version}.dmg"
  name 'Paper'
  homepage 'http://paper.meiyuan.in/'

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

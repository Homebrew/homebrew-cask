cask 'rest' do
  version :latest
  sha256 :no_check

  url 'https://dist.resttimer.com/mac/Rest.dmg'
  name 'Rest'
  homepage 'https://resttimer.com/en'
  license :commercial

  app 'Rest.app'

  uninstall :quit      => 'dangelov.Rest-Lite',
            :launchctl => 'dangelov.RestHelper'

  zap :delete => '~/Library/Preferences/dangelov.Rest-Lite.plist'
end

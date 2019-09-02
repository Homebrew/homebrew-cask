cask 'rest' do
  version '1.13.1'
  sha256 'f2057ec2e901755db68156d36cf0df97421d2c7c9cb1c4d66c4573e015143b05'

  url 'https://dist.resttimer.com/mac/Rest.dmg'
  appcast 'https://resttimer.com/appcast/rest.xml'
  name 'Rest'
  homepage 'https://resttimer.com/en'

  app 'Rest.app'

  uninstall quit:      'dangelov.Rest-Lite',
            launchctl: 'dangelov.RestHelper'

  zap trash: '~/Library/Preferences/dangelov.Rest-Lite.plist'
end

cask 'rest' do
  version :latest
  sha256 :no_check

  url 'https://dist.resttimer.com/mac/Rest.dmg'
  appcast 'https://resttimer.com/appcast/rest.xml'
  name 'Rest'
  homepage 'https://resttimer.com/en'

  app 'Rest.app'

  uninstall quit:      'dangelov.Rest-Lite',
            launchctl: 'dangelov.RestHelper'

  zap trash: '~/Library/Preferences/dangelov.Rest-Lite.plist'
end

cask 'rest' do
  version :latest
  sha256 :no_check

  url 'http://0.dangelov.com/rest-trial-mac'
  name 'Rest'
  homepage 'https://resttimer.com/en'
  license :commercial

  app 'Rest.app'

  uninstall :quit => 'dangelov.Rest-Lite'
  uninstall :launchctl => 'dangelov.RestHelper'

  zap :delete => '~/Library/Preferences/dangelov.Rest-Lite.plist'
end

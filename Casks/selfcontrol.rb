cask 'selfcontrol' do
  version '3.0.2'
  sha256 '26304906a8256d1794c02ea38f1faec0d048806a3f4c756d1fc0f3412cdd438f'

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'

  auto_updates true

  app 'SelfControl.app'

  zap trash: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end

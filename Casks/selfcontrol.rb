cask 'selfcontrol' do
  version '2.3'
  sha256 '10f55e3bbe21444760227699f1467ea4653f61791dfba7f4b3e92bf76bf87e18'

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'

  auto_updates true

  app 'SelfControl.app'

  zap trash: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end

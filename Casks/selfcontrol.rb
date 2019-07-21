cask 'selfcontrol' do
  version '2.2.2'
  sha256 '2cf92f8f142d630ed8cf77308599fa00fd610ec9fbafafcea27773974afdd4e1'

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'

  auto_updates true

  app 'SelfControl.app'

  zap trash: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end

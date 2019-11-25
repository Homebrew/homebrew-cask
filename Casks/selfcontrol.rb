cask 'selfcontrol' do
  version '2.3.1'
  sha256 '91cbc81725bfdc9f3fce17f8b9857b90c4fc920541c23dba5b4e974683a0a0cf'

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'

  auto_updates true

  app 'SelfControl.app'

  zap trash: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end

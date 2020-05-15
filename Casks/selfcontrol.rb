cask 'selfcontrol' do
  version '3.0'
  sha256 'f96708e836d761ede7f965aedcb71dfbe96f6f0ab5670ba7e15f39c3f921fead'

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'

  auto_updates true

  app 'SelfControl.app'

  zap trash: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end

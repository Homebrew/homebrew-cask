cask 'selfcontrol' do
  version '3.0.1'
  sha256 'fd4776384101c16855a8ea9339a12ba1bf626beeca0247d58615d1cf4932f518'

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'

  auto_updates true

  app 'SelfControl.app'

  zap trash: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end

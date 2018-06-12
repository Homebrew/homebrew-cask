cask 'compositor' do
  version '1.2.0'
  sha256 '35409beb910af31562f27c3ebd7b4c5df4dd16e87dc6acdb4f16a6208b3f39f6'

  url "http://compositorapp.com/updates/Compositor_#{version}.zip"
  appcast 'http://compositorapp.com/updates/appcast.xml'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end

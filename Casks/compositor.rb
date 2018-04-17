cask 'compositor' do
  version '1.1.0'
  sha256 '2c31f13ce60b1cca205fcefe1c387051f08dbcc74ae2f38719aeb8c738954c3c'

  url "http://compositorapp.com/updates/Compositor_#{version}.zip"
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '89343f62d4a1470d3c24984d9dfd59017dd0bee887b3af34789824b3656133d5'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end

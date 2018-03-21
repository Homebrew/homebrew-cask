cask 'compositor' do
  version '1.0.1'
  sha256 '61179106067f4fbb00f725cb7e0cece19edbdbcccf7240cfa75ba4be224b02c9'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: 'ec50b5d476d3c2b398039ab99a394417177386d1cc4ca501b836493332b2a5f9'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end

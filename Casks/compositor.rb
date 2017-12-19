cask 'compositor' do
  version '0.9.18'
  sha256 'f427f21293b1768bce0ad8e6a4eaadbc076d74e86a753e5cdedb5e6031e41b88'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '942af0faea8d3f3e2fea144c00f1ffa1ad024c92216e4412495e0d686c14a830'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end

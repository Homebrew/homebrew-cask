cask 'compositor' do
  version '1.13.0'
  sha256 'c90cef90026a5743a92c7ac57a332b2842bba63b15d1e3872e7c1989f3c0c104'

  url "https://compositorapp.com/updates/Compositor_#{version}.zip"
  appcast 'https://compositorapp.com/updates/appcast.xml'
  name 'Compositor'
  homepage 'https://compositorapp.com/'

  depends_on macos: '>= :sierra'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end

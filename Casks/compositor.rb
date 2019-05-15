cask 'compositor' do
  version '1.9.2'
  sha256 'd83950a1ecaede380db3bf9db1ed65db306457eae5f3f624a16428f8b4bbd1a1'

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

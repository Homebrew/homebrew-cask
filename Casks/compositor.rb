cask 'compositor' do
  version '1.10.0'
  sha256 '26ab3cb3aae18fa9fa20c98cee681d7c688db14b9e44058f4887d3a8c9c268bf'

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

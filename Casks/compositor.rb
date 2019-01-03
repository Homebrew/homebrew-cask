cask 'compositor' do
  version '1.5.12'
  sha256 '47c677af12aacaac1f6ae8c4a5c3f5b9d96a93f121bc76519582fb6e77a15f49'

  url "https://compositorapp.com/updates/Compositor_#{version}.zip"
  appcast 'https://compositorapp.com/updates/appcast.xml'
  name 'Compositor'
  homepage 'https://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end

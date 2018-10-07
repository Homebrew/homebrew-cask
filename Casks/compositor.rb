cask 'compositor' do
  version '1.4.1'
  sha256 '7a8cceb474307773c7f51853d7c802aba69840395d2e09281922e0b4fe8b9b6f'

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

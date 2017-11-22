cask 'compositor' do
  version '0.9.15'
  sha256 '71f23802980f8311f8288a068ffa7df336395862a77a1730cfdaa9880b33f471'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: 'fd05c31bdda084240afa7e346feb019f3a076b3f82bfd85bbfe0ade4b26e7209'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end

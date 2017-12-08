cask 'compositor' do
  version '0.9.17'
  sha256 'ae58d823b8263b1d9437f95801f6c0d1b0f414d32e0fb47eb09747519985b0f9'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: '8997ec0c1c7f7ddf62da7871fb317d7954cc2bcb9278af610ca347ce0cdfdf50'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap trash: [
               '~/Library/Application Scripts/com.microlarge.Compositor',
               '~/Library/Containers/com.microlarge.Compositor',
               '~/Library/Preferences/com.microlarge.Compositor.plist',
             ]
end

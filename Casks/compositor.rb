cask 'compositor' do
  version '0.9.9'
  sha256 'ee9afa38099d5e3ff045326e4ad6be510477d68b96c53adb7128c9fe4a30b52a'

  url 'http://compositorapp.com/downloads/Compositor.dmg'
  appcast 'http://compositorapp.com/updates/appcast.xml',
          checkpoint: 'b65ce2ffa387d56f7b37772eb0ee194aa43b3354745dd829f3d774296d09c8d7'
  name 'Compositor'
  homepage 'http://compositorapp.com/'

  app 'Compositor.app'

  zap delete: [
                '~/Library/Application Scripts/com.microlarge.Compositor',
                '~/Library/Containers/com.microlarge.Compositor',
              ],
      trash:  '~/Library/Preferences/com.microlarge.Compositor.plist'
end

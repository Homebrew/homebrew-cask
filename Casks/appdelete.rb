cask 'appdelete' do
  version '4.3.1'
  sha256 '21eed80f051a8e17e8c0ecd79661616d670be6a12b2284a85c6e1997a0d5158c'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast "http://www.reggieashworth.com/AD#{version.major}Appcast.xml",
          checkpoint: '004ec5daff01eeac177e3fc109471079aa6479599efe0f365031f21bd0a4c87c'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'AppDelete.app'

  zap delete: [
                '~/Library/Application Support/AppDelete',
                '~/Library/Caches/com.apps4macs.AppDelete',
                '~/Library/Preferences/com.apps4macs.AppDelete.plist',
                '~/Library/Saved Application State/com.apps4macs.AppDelete.savedState',
                '~/Library/Services/AppDelete.workflow',
              ]
end

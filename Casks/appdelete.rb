cask 'appdelete' do
  version '4.3.3'
  sha256 'ac7ce8a55ad74eed68d79ccf69284a1174bf74a2a376f73c63e51ca8c4687547'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast "http://www.reggieashworth.com/AD#{version.major}Appcast.xml",
          checkpoint: '2ee2069f1fb1f4a76adde5c9be3c120742556ed741b1dd43ee4804017db86d61'
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

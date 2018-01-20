cask 'appdelete' do
  version '4.3.3'
  sha256 'ac7ce8a55ad74eed68d79ccf69284a1174bf74a2a376f73c63e51ca8c4687547'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast "http://www.reggieashworth.com/AD#{version.major}Appcast.xml",
          checkpoint: '843016cf398f3163565900b2589522f265402a7b6a37e2704c0adab10bc1ace6'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'AppDelete.app'

  zap trash: [
               '~/Library/Application Support/AppDelete',
               '~/Library/Caches/com.apps4macs.AppDelete',
               '~/Library/Preferences/com.apps4macs.AppDelete.plist',
               '~/Library/Saved Application State/com.apps4macs.AppDelete.savedState',
               '~/Library/Services/AppDelete.workflow',
             ]
end

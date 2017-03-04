cask 'appdelete' do
  version '4.3.2'
  sha256 '8ebdb3579dabd0d50382aca0101d58c9b31f3d70d909c7fa53948ed1ca313c16'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast "http://www.reggieashworth.com/AD#{version.major}Appcast.xml",
          checkpoint: 'b6256893f57e19683482cc32b9e73093b86814d9c74d60747d2b1dd0d6a9e772'
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

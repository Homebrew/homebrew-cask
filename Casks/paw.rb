cask 'paw' do
  version '3.1.4,2'
  sha256 'eeda0dbcd25a2d8407bf3784f19f0e5325be2920dbccd6440b92cb2aaea5e0f5'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.major_minor_patch}-#{version.major}#{version.minor.rjust(3, '0')}#{version.patch.rjust(3, '0')}#{version.after_comma.rjust(3, '0')}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: '7cadb0a1fb7e74deb55b0df24cefeaefb2bd5a8b6ca5d73590eee0bacceab058'
  name 'Paw'
  homepage 'https://paw.cloud/'

  app 'Paw.app'

  zap delete: [
                '~/Library/Application Scripts/com.luckymarmot.Paw',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luckymarmot.paw.sfl',
                '~/Library/Containers/com.luckymarmot.Paw',
                '~/Library/Preferences/com.luckymarmot.Paw.plist',
                '~/Library/Saved Application State/com.luckymarmot.Paw.savedState',
              ]
end

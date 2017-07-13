cask 'paw' do
  version '3.1.2,3'
  sha256 '49e1dd5cc65371f4be5ac662602354e44e107ac3a4e231285f7f7b68b6194992'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.major_minor_patch}-#{version.major}#{version.minor.rjust(3, '0')}#{version.patch.rjust(3, '0')}#{version.after_comma.rjust(3, '0')}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: '5f38de83df49985c61e76b1a001e27e389429ef5f0ecb1f0f7429b8e02cb24dc'
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

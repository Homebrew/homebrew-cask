cask 'paw' do
  version '3.1.3,2'
  sha256 '5b541d75500afce84cb871624f627052e77da5968e91024244762b24c9ad5a71'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.major_minor_patch}-#{version.major}#{version.minor.rjust(3, '0')}#{version.patch.rjust(3, '0')}#{version.after_comma.rjust(3, '0')}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: '2dfe5c4ac3ea47a421f785ae10aef3e0be4979d49d586fd4c5c98fb022ee5ef8'
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

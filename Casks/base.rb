cask 'base' do
  version '2.4.15'
  sha256 'a420e9ed0e5309c2466374ae61c7a865e4c4f7d086d81753641bb32bd3601507'

  url "https://files.menial.co.uk/base/base_#{version}.zip"
  appcast 'https://update.menial.co.uk/software/base/'
  name 'Menial Base'
  homepage 'https://menial.co.uk/base/'

  depends_on macos: '>= :mojave'

  app 'Base.app'

  zap trash: [
               '~/Library/Application Support/Base',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/uk.co.menial.base.sfl*',
               '~/Library/Caches/com.apple.helpd/Generated/uk.co.menial.base.help*',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/uk.co.menial.base.help*',
               '~/Library/Caches/uk.co.menial.Base',
               '~/Library/Preferences/uk.co.menial.Base.plist',
             ]
end

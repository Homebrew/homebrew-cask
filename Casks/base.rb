cask 'base' do
  version '2.5'
  sha256 '902c72ad212d54eb582aa14b8b570ae5d83202e3d9fe3bcdbb1761b0a2877296'

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

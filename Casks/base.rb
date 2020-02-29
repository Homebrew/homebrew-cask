cask 'base' do
  version '2.4.16'
  sha256 'e7f2b8fb7b14b1d0344817465315d8df074f47c26c066c067ea79b6d595a9b12'

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

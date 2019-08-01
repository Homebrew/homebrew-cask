cask 'freac' do
  version '1.1-alpha-20181201a'
  sha256 'dc9053232c0336f789ab57776a69ae4718e98d4fcf53afac1b0e1fefd35a0c76'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.freac.freac.sfl*',
               '~/Library/Preferences/org.freac.freac.plist',
               '~/Library/Saved Application State/org.freac.freac.savedState',
             ]
end

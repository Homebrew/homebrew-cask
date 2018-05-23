cask 'djview' do
  version '4.10.6,57c'
  sha256 '6ad1fe387434da4d103cbe343a7d6bb0da0fa139787069b3ba76f124651402a2'

  url "https://downloads.sourceforge.net/djvu/DjVuLibre-3.5.27%2BDjView-#{version.before_comma}-qt#{version.after_comma}-intel64.dmg"
  appcast 'https://sourceforge.net/projects/djvu/rss',
          checkpoint: '608eefef3e99391add5aa043ba70bee99d2cea3a7276fab6d96398e11877dd39'
  name 'DjView'
  homepage 'http://djvu.sourceforge.net/'

  app 'DjView.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.djvu.djview.sfl*',
               '~/Library/Preferences/org.djvu.DjView.plist',
               '~/Library/Saved Application State/org.djvu.DjView.savedState',
             ]
end

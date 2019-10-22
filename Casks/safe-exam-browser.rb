cask 'safe-exam-browser' do
  version '2.1.3'
  sha256 '57cdaf387378b0944050f652ab6451c1319cb5b3ab3b2f83cbd3755b085c2401'

  # downloads.sourceforge.net was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/seb/SafeExamBrowser-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/seb/rss?path=/seb-macosx'
  name 'Safe Exam Browser'
  homepage 'https://safeexambrowser.org/'

  app 'Safe Exam Browser.app'

  zap trash: [
               '~/Library/Caches/org.safeexambrowser.Safe-Exam-Browser',
               '~/Library/Logs/Safe Exam Browser',
               '~/Library/Preferences/org.safeexambrowser.Safe-Exam-Browser.plist',
             ]
end

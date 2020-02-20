cask 'safe-exam-browser' do
  version '2.1.4'
  sha256 '02a9f947ec7567f11f698d5c91d3d8d68ec9e05b5090996007cc709820c1889d'

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

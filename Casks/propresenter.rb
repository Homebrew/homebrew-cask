cask 'propresenter' do
  version '7.1,117506056'
  sha256 '98101847549d29cf557ae39ffafe2c8477d10c3765f14c4ae4419edc394123ef'

  url "https://renewedvision.com/downloads/propresenter/mac/ProPresenter_#{version.before_comma}_#{version.after_comma}.zip"
  appcast 'https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=0&appVersion=0&buildNumber=0&includeNotes=0'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  depends_on macos: '>= :mojave'

  app 'ProPresenter.app'

  zap trash: [
               '~/Library/Application Support/RenewedVision/ProPresenter6',
               '~/Library/Caches/KSCrashReports/ProPresenter 6',
               '~/Library/Caches/Sessions/ProPresenter 6',
               '~/Library/Caches/com.renewedvision.ProPresenter6',
               '~/Library/Preferences/com.renewedvision.ProPresenter6.plist',
               '/Library/Application Support/RenewedVision',
               '/Library/Caches/com.renewedvision.ProPresenter6',
               '/Users/Shared/Renewed Vision Media',
             ],
      rmdir: [
               '~/Library/Application Support/RenewedVision',
               '~/Library/Caches/KSCrashReports',
               '~/Library/Caches/Sessions',
             ]
end

cask 'propresenter' do
  version '6.3.5_b16156'
  sha256 '54482ee8492211ed8c94eabbdfcc610285fee746278548ba52b3a84aacd9979f'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php"
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"

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

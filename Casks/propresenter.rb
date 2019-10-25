cask 'propresenter' do
  version '6.5_100990994'
  sha256 '4d11a26ef9dde9462e123cdc8a2df6979d4791597bd885087e6c04e08600f1f1'

  url "https://renewedvision.com/downloads/ProPresenter%20#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php"
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  depends_on macos: '>= :sierra'

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

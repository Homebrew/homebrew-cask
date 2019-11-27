cask 'propresenter' do
  version '6.5.2_100991490'
  sha256 '95939b10fcc9feb8cb9b75d54c4589282673f6baadd37e051b10cf970e29eecb'

  url "https://renewedvision.com/downloads/ProPresenter%20#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php"
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  depends_on macos: '>= :high_sierra'

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

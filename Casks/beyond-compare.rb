cask 'beyond-compare' do
  version '4.3.3.24545'
  sha256 '8ca170c42a6a566e46a9f2b988d9407e320ce8944ab8fbea2e50f31f67d23121'

  url "https://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  appcast 'https://www.scootersoftware.com/download.php'
  name 'Beyond Compare'
  homepage 'https://www.scootersoftware.com/'

  auto_updates true

  app 'Beyond Compare.app'
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp"

  zap trash: [
               '~/Library/Application Support/Beyond Compare',
               '~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help*',
               '~/Library/Caches/com.ScooterSoftware.BeyondCompare',
               '~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState',
             ]
end

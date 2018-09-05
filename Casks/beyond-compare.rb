cask 'beyond-compare' do
  version '4.2.6.23150'
  sha256 '796bebd7f327140fd8683d8c5828c2dec551d1f7d040e0ca5cce94083e75b0c9'

  url "https://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  appcast "https://www.scootersoftware.com/checkupdates.php?product=bc#{version.major}&platform=osx"
  name 'Beyond Compare'
  homepage 'https://www.scootersoftware.com/'

  app 'Beyond Compare.app'
  binary "#{appdir}/Beyond Compare.app/Contents/MacOS/bcomp"

  zap trash: [
               '~/Library/Application Support/Beyond Compare',
               '~/Library/Caches/com.apple.helpd/Generated/com.ScooterSoftware.BeyondCompare.help*',
               '~/Library/Caches/com.ScooterSoftware.BeyondCompare',
               '~/Library/Saved Application State/com.ScooterSoftware.BeyondCompare.savedState',
             ]
end

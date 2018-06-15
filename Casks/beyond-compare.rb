cask 'beyond-compare' do
  version '4.2.5.23088'
  sha256 '523895e29db80c7c0acf6a91884d14f134d16a2f4b7af6621af3b76bfe3cbb46'

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

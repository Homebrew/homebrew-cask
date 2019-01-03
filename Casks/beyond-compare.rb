cask 'beyond-compare' do
  version '4.2.8.23479'
  sha256 'd1c62a100ec1543d03e284e50b5e4b23e1c64cec27c855b17fb061f3b2e0b984'

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

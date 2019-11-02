cask 'beyond-compare' do
  version '4.3.2.24472'
  sha256 'd21d3f98c2d08b766060d233f76569b6fa0b4ba0eeeb0fb64e89ead796d8922b'

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

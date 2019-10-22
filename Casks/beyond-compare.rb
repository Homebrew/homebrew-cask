cask 'beyond-compare' do
  version '4.3.0.24364'
  sha256 '59421953eadad81c688f44217728fc20a749514f019acb9c994a08eb20adbcdd'

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

cask 'beyond-compare' do
  version '4.2.10.23938'
  sha256 '8e7267b451de58dea04dacda3d15aad2537afd5386cf05fa9663cb76958e2127'

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

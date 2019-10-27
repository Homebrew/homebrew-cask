cask 'beyond-compare' do
  version '4.3.1.24438'
  sha256 '416e1181e09a6188a65066e10db832eb832a6ea577864d69b2b8d595741f3aee'

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

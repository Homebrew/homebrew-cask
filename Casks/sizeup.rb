cask 'sizeup' do
  version '1.7.3'
  sha256 'ad0e38750b76759528fb38013521f9196a54682143ae30a968ac0e3e0a2827e8'

  url "https://www.irradiatedsoftware.com/downloads/SizeUp_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/sizeup.php'
  name 'SizeUp'
  homepage 'https://www.irradiatedsoftware.com/sizeup/'

  auto_updates true
  accessibility_access true

  app 'SizeUp.app'

  zap trash: [
               '~/Library/Preferences/com.irradiatedsoftware.SizeUp.plist',
               '~/Library/Application Support/SizeUp',
             ]
end

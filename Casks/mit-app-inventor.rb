cask 'mit-app-inventor' do
  version '3.0rc3'
  sha256 '7c1a5801eef82baac4045a8d6508b2b388d632baf79d4ef26cc150d53d19aa7d'

  # 128.52.184.65/ was verified as official when first introduced to the cask
  url "http://128.52.184.65/MIT_App_Inventor_Setup_#{version}.dmg"
  name 'MIT App Inventor'
  homepage 'https://appinventor.mit.edu/explore/ai2/mac'

  pkg 'MITAppInventorSetup.pkg'

  uninstall launchctl: 'edu.mit.appinventor.aiStarter',
            pkgutil:   'edu.mit.pkg.AppInventorSetupInstaller'
end

cask 'oversight' do
  version '1.0.0'
  sha256 'e20b7d91f4301f26236607e5c204286b1901cd138ae6c3a66865c09a95746bc5'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/OverSight_#{version}.zip"
  appcast 'https://objective-see.com/products/versions/oversight.json'
  name 'Oversight'
  homepage 'https://objective-see.com/products/oversight.html'

  app 'OverSight_Installer.app'

  uninstall delete: '/Applications/OverSight.app'
end

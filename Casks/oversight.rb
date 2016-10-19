cask 'oversight' do
  version '1.0.0'
  sha256 'e20b7d91f4301f26236607e5c204286b1901cd138ae6c3a66865c09a95746bc5'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/OverSight_#{version}.zip"
  appcast 'https://objective-see.com/products/versions/oversight.json',
          checkpoint: 'da8cba3af8fa83a106e23be6299fd286fe8377931906270bfdd885a609a1ae8b'
  name 'Oversight'
  homepage 'https://objective-see.com/products/oversight.html'

  installer manual: 'OverSight_Installer.app'

  uninstall quit:       'com.objective-see.OverSightHelper',
            delete:     '/Applications/OverSight.app',
            login_item: 'OverSight Helper'
end

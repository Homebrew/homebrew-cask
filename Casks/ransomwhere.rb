cask 'ransomwhere' do
  version '1.2.0'
  sha256 'b36433e335f4c25de885cfa9af79f07395cf5d2e929900442a00b85983544a52'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/RansomWhere_#{version}.zip"
  appcast 'https://objective-see.com/products.json',
          checkpoint: '89dae1300c90242339b554780b2592f96a3da1be144c26555b290f499e1abde5'
  name 'RansomWhere'
  homepage 'https://objective-see.com/products/ransomwhere.html'

  installer script: {
                      executable: "#{staged_path}/RansomWhere_Installer.app/Contents/MacOS/RansomWhere_Installer",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/RansomWhere_Installer.app/Contents/MacOS/RansomWhere_Installer",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }
end

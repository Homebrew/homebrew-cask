cask 'ransomwhere' do
  version '1.2.3'
  sha256 'c9f21c0d5ba0512e97a89e12635f6380ada2b294ba49ce45d97bb8db3b53cefe'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/RansomWhere_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/RansomWhere.txt',
          checkpoint: '597301ae2d39100b0edb041933a5aa51cf07f481bb4363790bb4eca428e2964d'
  name 'RansomWhere'
  homepage 'https://objective-see.com/products/ransomwhere.html'

  depends_on macos: '>= :mountain_lion'

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

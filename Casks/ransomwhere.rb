cask 'ransomwhere' do
  version '1.2.2'
  sha256 '7f502e4e21991c5d294d383fbc65664c3fd0cccefabf7569b907bfe3fe2c61c3'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/RansomWhere_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/RansomWhere.txt',
          checkpoint: 'ef351ca13e242fa46dea36eada86c407c3c4cb1b6531331d5d4f0c4bd446ca17'
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

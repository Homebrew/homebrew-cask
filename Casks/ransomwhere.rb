cask 'ransomwhere' do
  version '1.2.4'
  sha256 'ab3ebabc5165cce6e020a77f073b40afa0719576f2c981db5fb1f53d89c5f1e8'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/RansomWhere_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/RansomWhere.txt'
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

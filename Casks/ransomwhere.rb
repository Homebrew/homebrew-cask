cask 'ransomwhere' do
  version '1.2.1'
  sha256 'fa60764a7e90c2efc5028133becccc3b602b5dd30a305b81c7bf8a0eb5f0de31'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/RansomWhere_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/RansomWhere.txt',
          checkpoint: '8d7fe5d289e50cf88c6a079f235d62549cc4b8bdb182f7ea4b1af1dd8b39a76f'
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

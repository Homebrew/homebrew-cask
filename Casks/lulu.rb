cask 'lulu' do
  version '1.2.1'
  sha256 'a51b73c1fc3e4e11bbccffed0d1d70b4fc06a6f4774af06b254f8a82c0e4c1d5'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/LuLu_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/LuLu.txt'
  name 'LuLu'
  homepage 'https://objective-see.com/products/lulu.html'

  depends_on macos: '>= :sierra'

  installer script: {
                      executable: "#{staged_path}/Lulu Installer.app/Contents/MacOS/LuLu Installer",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/Lulu Installer.app/Contents/MacOS/LuLu Installer",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }

  zap trash: [
               '~/Library/Caches/com.objective-see.lulu',
               '~/Library/Caches/com.objective-see.lulu.helper',
               '~/Library/Preferences/com.objective-see.lulu.plist',
               '~/Library/Preferences/com.objective-see.lulu.helper.plist',
               '/Library/LaunchDaemons/com.objective-see.lulu.plist',
               '/Library/Logs/LuLu.log',
             ]

  caveats do
    kext
  end
end

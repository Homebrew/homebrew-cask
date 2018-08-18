cask 'lulu' do
  version '1.0.0'
  sha256 'bb89c4f770aa526a2a1a8c6fa6f63f1c80b5491e0cc0ea621e8fff2014263e0d'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/LuLu_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/LuLu.txt'
  name 'LuLu'
  homepage 'https://objective-see.com/products/lulu.html'

  depends_on macos: '>= :yosemite'

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
               '~/Library/Caches/com.objective-see.luluHelper',
               '~/Library/Preferences/com.objective-see.lulu.plist',
               '~/Library/Preferences/com.objective-see.luluHelper.plist',
               '/Library/LaunchDaemons/com.objective-see.lulu.plist',
               '/Library/Logs/LuLu.log',
             ]

  caveats do
    kext
  end
end

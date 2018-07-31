cask 'lulu' do
  version '0.9.8'
  sha256 'e2c6f684f6d0456b54bd5292022afaa74eff5c1bf2106138f8570c75259395c2'

  # github.com/objective-see/LuLu was verified as official when first introduced to the cask
  url "https://github.com/objective-see/LuLu/releases/download/#{version}/LuLu_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/objective-see/LuLu/releases.atom'
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

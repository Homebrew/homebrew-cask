cask 'lulu' do
  version '0.9.7'
  sha256 '0a9f0f45f9fb7dfc447ca31a34fa09f637681f1f87968e230476d3214d0010f8'

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

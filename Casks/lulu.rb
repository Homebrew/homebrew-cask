cask 'lulu' do
  version '0.9.4'
  sha256 '2d19adffa19e4fedc9451bb8df6d990f2445c6df6f82051e854ff5453b14375a'

  # github.com/objective-see/LuLu was verified as official when first introduced to the cask
  url "https://github.com/objective-see/LuLu/releases/download/#{version}/LuLu_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/objective-see/LuLu/releases.atom',
          checkpoint: '3689d44e521f82a4e910cfffdf4984c7509cc868303987f07539b4236b97c5c3'
  name 'LuLu'
  homepage 'https://objective-see.com/products/lulu.html'

  depends_on macos: '>= :yosemite'

  installer manual: 'Lulu Installer.app'

  uninstall script: {
                      executable: "#{staged_path}/Lulu Installer.app/Contents/Resources/configure.sh",
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

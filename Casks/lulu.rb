cask 'lulu' do
  version '0.9.3'
  sha256 '6309a469e3620cd4a3934ae0e417be7d8d3f9b6fe9f363561c01235ae57c9486'

  # github.com/objective-see/LuLu was verified as official when first introduced to the cask
  url "https://github.com/objective-see/LuLu/releases/download/#{version}/LuLu_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/objective-see/LuLu/releases.atom',
          checkpoint: '4e2de04ea705b61437a010ac87cace16459a6d3fed55148a01f62148d64f9a19'
  name 'LuLu'
  homepage 'https://objective-see.com/products/lulu.html'

  depends_on macos: '>= :yosemite'

  installer script: {
                      executable: "#{staged_path}/Lulu Installer.app/Contents/Resources/configure.sh",
                      args:       ['-install'],
                      sudo:       true,
                    }

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

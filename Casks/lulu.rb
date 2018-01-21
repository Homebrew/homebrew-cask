cask 'lulu' do
  version '0.9.2'
  sha256 '05147e83e25463f6cdd8963f69f4c38e390ac2b9462bc5e3f9ab9b04c22b8e0f'

  # github.com/objective-see/LuLu was verified as official when first introduced to the cask
  url "https://github.com/objective-see/LuLu/releases/download/#{version}/LuLu_#{version}.zip"
  appcast 'https://github.com/objective-see/LuLu/releases.atom',
          checkpoint: '7f88f41f7c8ca1453e3057e984595b535dbd1ccb1c1887f4b04673d49dd1c39b'
  name 'LuLu'
  homepage 'https://objective-see.com/products/lulu.html'

  depends_on macos: '>= :yosemite'

  installer script: {
                      executable: 'configure.sh',
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: 'configure.sh',
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

cask 'reikey' do
  version '1.3.0'
  sha256 'd65a64fda45dc5e02db7f8bbdd2fdf07ce814bd9bdcc7f48aee090030942d7c0'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/ReiKey_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/ReiKey.txt'
  name 'ReiKey'
  homepage 'https://objective-see.com/products/reikey.html'

  depends_on macos: '>= :high_sierra'

  installer script: {
                      executable: "#{staged_path}/ReiKey Installer.app/Contents/MacOS/ReiKey Installer",
                      args:       ['-install'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{staged_path}/ReiKey Installer.app/Contents/MacOS/ReiKey Installer",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }

  zap trash: [
               '~/Library/Caches/SentryCrash/ReiKey Installer',
               '~/Library/Caches/SentryCrash/ReiKey Installer/Data',
               '~/Library/Caches/SentryCrash/ReiKey Installer/Data/ConsoleLog.txt',
               '~/Library/Caches/SentryCrash/ReiKey Installer/Data/CrashState.json',
               '~/Library/Caches/SentryCrash/ReiKey Installer/Reports',
             ]
end

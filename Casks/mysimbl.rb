cask 'mysimbl' do
  version '0.5.3'
  sha256 '809930f5b3260a905aa07b5dabfeef52c6cbfff08081c2ce2b271b12f4f658b1'

  # githubusercontent.com/w0lfschild/app_updates/master/mySIMBL was verified as official when first introduced to the cask
  url 'https://github.com/w0lfschild/mySIMBL/releases/download/0.5.3/mySIMBL-29.zip'
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/appcast.xml',
          checkpoint: '7923369a4c5ca5e6df3a493697327505a974abd0bb7b25b893a31151c7150555'
  name 'mySIMBL'
  homepage 'https://github.com/w0lfschild/mySIMBL'

  conflicts_with cask: 'easysimbl'

  app 'mySIMBL.app'

  zap delete: [
                '~/Library/Application Support/mySIMBL',
                '~/Library/Caches/org.w0lf.mySIMBL',
                '~/Library/Caches/org.w0lf.mySIMBLAgent',
                '~/Library/Preferences/org.w0lf.SIMBLAgent.plist',
                '~/Library/Preferences/org.w0lf.mySIMBL.plist',
                '~/Library/Preferences/org.w0lf.mySIMBLAgent.plist',
              ]

  caveats 'System Integrity Protection must be disabled to install SIMBL.'
end

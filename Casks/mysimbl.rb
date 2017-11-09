cask 'mysimbl' do
  version '0.5.3,29'
  sha256 '809930f5b3260a905aa07b5dabfeef52c6cbfff08081c2ce2b271b12f4f658b1'

  url "https://github.com/w0lfschild/mySIMBL/releases/download/#{version.before_comma}/mySIMBL-#{version.after_comma}.zip"
  appcast 'https://github.com/w0lfschild/mySIMBL/releases.atom',
          checkpoint: 'cffdd993f9a158de17b8dcfd2daf56059d8817c83748c1b93a597cf3254c46c3'
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

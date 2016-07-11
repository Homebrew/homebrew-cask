cask 'mysimbl' do
  version '0.2.6'
  sha256 '077069e66ae076d392e88b88f9e313b477bfe613b0ba7463332cceadde65c8fc'

  # githubusercontent.com/w0lfschild/app_updates/master/mySIMBL was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/mySIMBL_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/appcast.xml',
          checkpoint: '835deb468f1af3b7863ddabeaeccb67d47405698c53a8ffbd5be59e72334b291'
  name 'mySIMBL'
  homepage 'https://github.com/w0lfschild/mySIMBL'
  license :bsd

  conflicts_with cask: 'easysimbl'

  app 'mySIMBL.app'

  caveats 'System Integrity Protection must be disabled to install SIMBL.'
end

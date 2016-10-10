cask 'mysimbl' do
  version '0.3.1'
  sha256 '185012a62f458b47f76fe3dbc8eb885d68409db1677f28551aabe5661045552a'

  # githubusercontent.com/w0lfschild/app_updates/master/mySIMBL was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/mySIMBL_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/appcast.xml',
          checkpoint: '6a354e1c0e94de679053d68a5b75bea385f79529decdf215905137a8991f5319'
  name 'mySIMBL'
  homepage 'https://github.com/w0lfschild/mySIMBL'

  conflicts_with cask: 'easysimbl'

  app 'mySIMBL.app'

  caveats 'System Integrity Protection must be disabled to install SIMBL.'
end

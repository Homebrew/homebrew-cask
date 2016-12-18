cask 'mysimbl' do
  version '0.4.2'
  sha256 '1cc9211ad7e5eb65cb51c1c392400c5ab7209776fdfd7d0c2c7cfd39bb64aaa8'

  # githubusercontent.com/w0lfschild/app_updates/master/mySIMBL was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/mySIMBL_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/appcast.xml',
          checkpoint: 'b7a6a025e1a6d2af2f41f79a6642cb2e6384d0242d209a83116c7ab3c701e6ed'
  name 'mySIMBL'
  homepage 'https://github.com/w0lfschild/mySIMBL'

  conflicts_with cask: 'easysimbl'

  app 'mySIMBL.app'

  caveats 'System Integrity Protection must be disabled to install SIMBL.'
end

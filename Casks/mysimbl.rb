cask 'mysimbl' do
  version '0.4.3'
  sha256 '340b836590d3fd4a292fe536ffb1fc269dfd1a794ac006fd0166ff6340fb066a'

  # githubusercontent.com/w0lfschild/app_updates/master/mySIMBL was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/mySIMBL_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/appcast.xml',
          checkpoint: '1ca21aa0ea63986fccfa681e0730965b3fccf9ceeaebd7652534bc4fc3333fcd'
  name 'mySIMBL'
  homepage 'https://github.com/w0lfschild/mySIMBL'

  conflicts_with cask: 'easysimbl'

  app 'mySIMBL.app'

  caveats 'System Integrity Protection must be disabled to install SIMBL.'
end

cask 'mysimbl' do
  version '0.3.0'
  sha256 'cb6d3ecdb4320eec53564feca1464ac8d4d95e032871b13210eba681e89edec7'

  # githubusercontent.com/w0lfschild/app_updates/master/mySIMBL was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/mySIMBL_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/mySIMBL/appcast.xml',
          checkpoint: '0022bee1285fb472766b41519018f72d226d289887ede77139cfdb314ce1cbdf'
  name 'mySIMBL'
  homepage 'https://github.com/w0lfschild/mySIMBL'
  license :bsd

  conflicts_with cask: 'easysimbl'

  app 'mySIMBL.app'

  caveats 'System Integrity Protection must be disabled to install SIMBL.'
end

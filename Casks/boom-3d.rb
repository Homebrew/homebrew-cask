cask 'boom-3d' do
  version '1.1.4,1527055860'
  sha256 'd4800054fe1e8db5cfa70989320e9f289d98e780f8c11a2d522fcc4bc8e9cbe8'

  # devmate.com/com.globaldelight.Boom3D was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom3D/#{version.before_comma}/#{version.after_comma}/Boom3D-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom3D.xml',
          checkpoint: '0efeb31ff3a8a51810002b0f7383a6281f05e230fac3d8e3bc6efa0fafbceb00'
  name 'Boom 3D'
  homepage 'http://www.globaldelight.com/boom3d'

  depends_on macos: '>= :yosemite'

  app 'Boom 3D.app'

  uninstall launchctl: [
                         'com.globaldelight.Boom3D',
                         'com.globaldelight.Boom3DHelper',
                       ],
            quit:      'com.globaldelight.Boom3D'

  zap trash: [
               '~/Library/Application Support/Boom3D',
               '~/Library/Application Support/com.globaldelight.Boom3D',
               '~/Library/Preferences/com.globaldelight.Boom3D.plist',
               '~/Library/Preferences/com.globaldelight.Boom3DHelper.plist',
             ]
end

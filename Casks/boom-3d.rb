cask 'boom-3d' do
  version '1.1.1,1510208577'
  sha256 'a5d923e69c3a323d7af834fca0d2445fad3f4c5636d576b4cde151379df7eb24'

  # devmate.com/com.globaldelight.Boom3D was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom3D/#{version.before_comma}/#{version.after_comma}/Boom3D-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom3D.xml',
          checkpoint: '9b87023a39d6e349f9154d39e2e52171c7db19d27cac6c8bcd3ccf4c90c944cd'
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

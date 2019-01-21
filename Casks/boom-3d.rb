cask 'boom-3d' do
  version '1.2.3,1547810966'
  sha256 '62c0660e72908dbb7f0b59b89400bd80ca2051329bbce17436331b0e07e74c0a'

  # devmate.com/com.globaldelight.Boom3D was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom3D/#{version.before_comma}/#{version.after_comma}/Boom3D-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom3D.xml'
  name 'Boom 3D'
  homepage 'https://www.globaldelight.com/boom3d'

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

cask 'carbon-copy-cloner' do
  version '5.1.16.5965'
  sha256 '9914457ddf7022144e5ffa5edee5dcccbe0d2d7e88e85a17fd78473bb59ee8a6'

  # bombich.scdn1.secure.raxcdn.com/software/files was verified as official when first introduced to the cask
  url "https://bombich.scdn1.secure.raxcdn.com/software/files/ccc-#{version}.zip"
  appcast "https://bombich.com/software/updates/ccc.php?os_major=10&os_minor=14&os_bugfix=0&ccc=#{version.split('.').last}&beta=0"
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  auto_updates true

  app 'Carbon Copy Cloner.app'

  uninstall login_item: 'CCC User Agent',
            quit:       [
                          'com.bombich.ccc',
                          'com.bombich.cccuseragent',
                        ]

  zap trash: [
               '~/Library/Application Support/com.bombich.ccc',
               '~/Library/Caches/com.bombich.ccc',
               '~/Library/Preferences/com.bombich.ccc.plist',
               '~/Library/Preferences/com.bombich.cccuseragent.plist',
               '~/Library/Saved Application State/com.bombich.ccc.savedState',
               '/Library/LaunchDaemons/com.bombich.ccchelper.plist',
             ]
end

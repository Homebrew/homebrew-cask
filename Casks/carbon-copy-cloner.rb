cask 'carbon-copy-cloner' do
  version '5.1.9.5740'
  sha256 '7ca89e89472a7d54b3e741a1485359ca34af76f02dd02051941c370580ffd1b7'

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

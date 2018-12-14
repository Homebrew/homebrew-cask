cask 'carbon-copy-cloner' do
  version '5.1.7.5627'
  sha256 '23129904162e1674271a0feaf5f92b1ba72911607de45c37dba0a858b50570f1'

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
               '~/Library/Saved Application State/com.bombich.ccc.savedState',
             ]
end

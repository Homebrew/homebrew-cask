cask 'disk-sensei' do
  version '1.6'
  sha256 '9cc8025ef584703ca5df39829a8004070eb43587017709133b1641be62e1542f'

  # amazonaws.com/cindori was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/cindori/DiskSensei.zip'
  appcast 'https://www.cindori.org/updates/disksensei/DiskSensei.xml',
          checkpoint: '1966ae75c1b009f934886556936ffe2b79f1acf3116ae1285006149d0c838d60'
  name 'Disk Sensei'
  homepage 'https://cindori.org/'

  auto_updates true

  app 'Disk Sensei.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/org.cindori.SenseiTool',
            launchctl: 'org.cindori.SenseiTool'

  zap trash: [
               '~/Library/Application Support/Disk Sensei',
               '~/Library/Application Support/org.cindori.Disk-Sensei',
               '~/Library/Caches/org.cindori.Disk-Sensei',
               '~/Library/Cookies/org.cindori.Disk-Sensei.binarycookies',
               '~/Library/Preferences/org.cindori.Disk-Sensei.plist',
               '~/Library/Saved Application State/org.cindori.Disk-Sensei.savedState',
             ]
end

cask 'disk-sensei' do
  version '1.5.5'
  sha256 '967cbedfd0c415f005bf469ca3090d5f37aa35b87a0e42a68025968ddf5b72f8'

  # amazonaws.com/cindori was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/cindori/DiskSensei.dmg'
  appcast 'https://www.cindori.org/updates/disksensei/DiskSensei.xml',
          checkpoint: 'f6cb57100a3fe420dabb4a3f21431dddbc02f693aadbfbd4c54a10290092dddc'
  name 'Disk Sensei'
  homepage 'https://cindori.org/'

  auto_updates true

  app 'Disk Sensei.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/org.cindori.SenseiTool',
            launchctl: 'org.cindori.SenseiTool'

  zap delete: [
                '~/Library/Caches/org.cindori.Disk-Sensei',
                '~/Library/Cookies/org.cindori.Disk-Sensei.binarycookies',
                '~/Library/Saved Application State/org.cindori.Disk-Sensei.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Disk Sensei',
                '~/Library/Application Support/org.cindori.Disk-Sensei',
                '~/Library/Preferences/org.cindori.Disk-Sensei.plist',
              ]
end

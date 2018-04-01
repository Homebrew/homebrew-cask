cask 'disk-sensei' do
  version '1.6.3'
  sha256 '7c534cf3cae64f70a2bbc6343bbd34283cbace6b3d5e21e45c25f115b30c40c8'

  # amazonaws.com/cindori was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/cindori/DiskSensei.zip'
  appcast 'https://www.cindori.org/updates/disksensei/DiskSensei.xml',
          checkpoint: '1ea3730f833ce27ea547b4b9b0e4e8365c6afe84402647679167ac5d16e757c6'
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

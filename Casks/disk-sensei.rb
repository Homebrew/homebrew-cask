cask 'disk-sensei' do
  version '1.6.1'
  sha256 '0260cdf936512c94f9867cdfe5e7e29c4629426d0eb561474dbbf467f88156d6'

  # amazonaws.com/cindori was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/cindori/DiskSensei.zip'
  appcast 'https://www.cindori.org/updates/disksensei/DiskSensei.xml',
          checkpoint: '65d0b4c09f93480e71ccbf745ab6fe538b9326ece94e3e7c01799d788b9a395a'
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

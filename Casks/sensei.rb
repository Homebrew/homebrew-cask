cask 'sensei' do
  version '1.2.1,51'
  sha256 '278a8d3aa6dbbdaf12a3ad0d8606ca6a69c725c2aeb24a71f8bcd3d88994c1c4'

  # cindori.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://cindori.s3.amazonaws.com/Sensei.dmg'
  appcast 'https://api.appcenter.ms/v0.1/public/sparkle/apps/51fc066a-f4b4-49ec-b966-b2f476d2eede'
  name 'Sensei'
  homepage 'https://sensei.app/'

  auto_updates true
  depends_on macos: '>= :catalina'

  app 'Sensei.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/org.cindori.SenseiTool',
            launchctl: 'org.cindori.SenseiTool'

  zap trash: [
               '~/Library/Application Support/Sensei',
               '~/Library/Application Support/org.cindori.Sensei',
               '~/Library/Caches/org.cindori.Sensei',
               '~/Library/Cookies/org.cindori.Sensei.binarycookies',
               '~/Library/Preferences/org.cindori.Sensei.plist',
               '~/Library/Saved Application State/org.cindori.Sensei.savedState',
             ]
end

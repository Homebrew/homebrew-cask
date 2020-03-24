cask 'sensei' do
  version '1.1.8,24'
  sha256 'b669e3c9393a5c764a7ebdebfd1c95644895522eb62082d70a4fdafc2117da84'

  # cindori.s3.amazonaws.com was verified as official when first introduced to the cask
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

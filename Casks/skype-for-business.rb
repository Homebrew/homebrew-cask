cask 'skype-for-business' do
  version '16.10.0.97'
  sha256 '2e3782256c2971dc2cff2a40f73aeba02ef0f262e06c75ae073c77498f933f37'

  url "https://download.microsoft.com/download/D/0/5/D055DA17-C7B8-4257-89A1-78E7BBE3833F/SkypeForBusinessInstaller-#{version}.pkg"
  name 'Skype for Business'
  homepage 'https://www.microsoft.com/en-us/download/details.aspx?id=54108'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  pkg "SkypeForBusinessInstaller-#{version}.pkg"

  uninstall pkgutil:    [
                          'com.microsoft.SkypeForBusiness',
                          'com.microsoft.SkypeForBusiness.MeetingJoinPlugin',
                          'com.microsoft.package.Microsoft_AutoUpdate.app',
                        ],
            login_item: 'Skype for Business'

  zap delete: [
                '/Library/Internet Plug-Ins/MeetingJoinPlugin.plugin',
                '~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.plist',
                '~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.debuglogging.plist',
                '~/Library/Application Support/com.microsoft.SkypeForBusinessTAP',
                '~/Library/Application Support/Skype for Business',
              ],
      rmdir:  '/Library/Application Support/Microsoft'
end

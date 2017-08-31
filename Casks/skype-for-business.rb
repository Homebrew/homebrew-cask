cask 'skype-for-business' do
  version '16.8.0.196'
  sha256 'a9b713ba254e035a0535d5ad2857d2ab8e890d02721c84dc39057f128ed0dfd1'

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

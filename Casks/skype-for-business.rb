cask 'skype-for-business' do
  version '16.19.0.132'
  sha256 '18b62ce7c7edff9b398c66e320c3e9603669e648f240a2ed4ae065cefa1bf560'

  url "https://download.microsoft.com/download/D/0/5/D055DA17-C7B8-4257-89A1-78E7BBE3833F/SkypeForBusinessInstaller-#{version}.pkg"
  name 'Skype for Business'
  homepage 'https://www.microsoft.com/en-us/download/details.aspx?id=54108'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  pkg "SkypeForBusinessInstaller-#{version}.pkg"

  uninstall pkgutil:    [
                          'com.microsoft.SkypeForBusiness',
                          'com.microsoft.SkypeForBusiness.MeetingJoinPlugin',
                        ],
            login_item: 'Skype for Business'

  zap trash:   [
                 '/Library/Internet Plug-Ins/MeetingJoinPlugin.plugin',
                 '~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.plist',
                 '~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.debuglogging.plist',
                 '~/Library/Application Support/com.microsoft.SkypeForBusinessTAP',
                 '~/Library/Application Support/Skype for Business',
               ],
      rmdir:   '/Library/Application Support/Microsoft',
      pkgutil: 'com.microsoft.package.Microsoft_AutoUpdate.app'
end

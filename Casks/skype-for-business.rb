cask 'skype-for-business' do
  version '16.15.0.166'
  sha256 '5b192e6f06c1f54796dade2a438e801d463f4eddf6d7fcdef1bed9980f7f0a50'

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

cask 'skype-for-business' do
  version '16.16.0.102'
  sha256 '6bdf075fae7e7b3a01ab88c656cf6368bd1cf1bad02edfbd8dbc2826b0be95fa'

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

cask 'skype-for-business' do
  version '16.24.0.191'
  sha256 'b35e2be81c90d9e0abfe1ec3a9384a3de826c35d9f1304c111c56d5b44bb2a72'

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

  zap trash:     [
                   '/Library/Internet Plug-Ins/MeetingJoinPlugin.plugin',
                   '~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.plist',
                   '~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.debuglogging.plist',
                   '~/Library/Application Support/com.microsoft.SkypeForBusinessTAP',
                   '~/Library/Application Support/Skype for Business',
                 ],
      launchctl: 'com.microsoft.autoupdate.helper',
      rmdir:     '/Library/Application Support/Microsoft',
      pkgutil:   'com.microsoft.package.Microsoft_AutoUpdate.app'
end

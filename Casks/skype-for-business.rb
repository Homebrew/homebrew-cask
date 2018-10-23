cask 'skype-for-business' do
  version '16.22.0.175'
  sha256 '5d7b265631c304e21d39a2456cfc9e8932f36619504ec713809afe5d78085aac'

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

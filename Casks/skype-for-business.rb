cask 'skype-for-business' do
  version '16.28.0.142'
  sha256 'e3d05efa14620da27bc4bc1783dc66cde2d3ffc7faec52c41262fc20c9887547'

  url "https://download.microsoft.com/download/D/0/5/D055DA17-C7B8-4257-89A1-78E7BBE3833F/SkypeForBusinessInstaller-#{version}.pkg"
  appcast 'https://www.microsoft.com/download/details.aspx?id=54108'
  name 'Skype for Business'
  homepage 'https://www.microsoft.com/download/details.aspx?id=54108'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  pkg "SkypeForBusinessInstaller-#{version}.pkg"

  uninstall delete:     '/Applications/Skype for Business.app',
            pkgutil:    [
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
      launchctl: [
                   'com.microsoft.autoupdate.helper',
                   'com.microsoft.update.agent',
                 ],
      rmdir:     '/Library/Application Support/Microsoft',
      pkgutil:   [
                   'com.microsoft.package.Microsoft_AU_Bootstrapper.app',
                   'com.microsoft.package.Microsoft_AutoUpdate.app',
                 ]
end

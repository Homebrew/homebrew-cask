cask 'skype-for-business' do
  version '16.0.0.3638'
  sha256 '57236471924a67973e66fbe4e2e53e86cfe5e054318950d183a4e0e4df68a2be'

  url "https://download.microsoft.com/download/D/0/5/D055DA17-C7B8-4257-89A1-78E7BBE3833F/SkypeForBusinessInstaller-#{version}.pkg"
  name 'Skype for Business'
  homepage 'https://www.microsoft.com/en-us/download/details.aspx?id=54108'

  pkg "SkypeForBusinessInstaller-#{version}.pkg"

  uninstall pkgutil:    'com.microsoft.SkypeForBusiness',
            login_item: 'Skype for Business'

  zap delete: [
                '/Library/Internet Plug-Ins/MeetingJoinPlugin.plugin',
                '~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.plist',
                '~/Library/Preferences/com.microsoft.SkypeForBusinessTAP.debuglogging.plist',
                '~/Library/Application Support/com.microsoft.SkypeForBusinessTAP',
                '~/Library/Application Support/Skype for Business',
              ]
end

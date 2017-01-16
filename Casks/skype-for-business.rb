cask 'skype-for-business' do
  version '16.2.0.156'
  sha256 'd5611b616f0c16f099621254b2c5eae75cc8a7e925ee78ffac70127bb338d63b'

  url "https://download.microsoft.com/download/D/0/5/D055DA17-C7B8-4257-89A1-78E7BBE3833F/SkypeForBusinessInstaller-#{version}.pkg"
  name 'Skype for Business'
  homepage 'https://www.microsoft.com/en-us/download/details.aspx?id=54108'

  depends_on macos: '>= :el_capitan'

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

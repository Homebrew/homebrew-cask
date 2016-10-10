cask 'nti-shadow' do
  version '5.0.0.52'
  sha256 'fb432cf051ecdf0a84000ab10c945a80e940188c33f8938465102d786f388ee2'

  url "https://ftp4.nticorp.com/update/NTI_Shadow_#{version}_Free_Update_Mac.dmg"
  name 'NTI Shadow 5 for Mac'
  homepage 'http://www.nticorp.com/en/us/product/shadow_5_mac.asp'

  app 'NTI Shadow.app'

  zap delete: [
                '~/Library/Preferences/com.achieva.NTIShadow41.plist',
                '~/Library/Logs/NTI Shadow.log',
              ]
end

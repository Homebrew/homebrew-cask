cask '1password' do
  version '7.3.1'
  sha256 '8f70fa09b185f32154aeabe8a612b75f689568a37c360c38adeaa90351113730'

  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "1Password #{version.major}.app"

  zap trash: [
               "~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword#{version.major}-helper",
               "~/Library/Application Scripts/com.agilebits.onepassword#{version.major}",
               "~/Library/Application Scripts/com.agilebits.onepassword#{version.major}-launcher",
               '~/Library/Application Scripts/com.agilebits.onepasswordnativemessaginghost',
               "~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword#{version.major}-helper",
               "~/Library/Containers/com.agilebits.onepassword#{version.major}",
               "~/Library/Containers/com.agilebits.onepassword#{version.major}-launcher",
               '~/Library/Containers/com.agilebits.onepasswordnativemessaginghost',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
               '~/Library/Logs/1Password',
               "~/Library/Preferences/com.agilebits.onepassword#{version.major}.plist",
             ]
end

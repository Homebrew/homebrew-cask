cask '1password' do
  version '7.2.4'
  sha256 'e7fd60a8cc32dcb1db831e4b3c0984fe872141845d854e811e0fb2e656ac12bd'

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

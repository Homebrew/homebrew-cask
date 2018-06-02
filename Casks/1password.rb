cask '1password' do
  version '7.0.3'
  sha256 '04c66528087cc5b702dd03578711207c94fe1a4888cd8290e0a7ddf3eca0aa48'

  # 1password.com was verified as official when first introduced to the cask
  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.pkg"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}",
          checkpoint: '117f165a494f5c8eacdb03249ccd7b693b21e3144a8dfe8cf7fe25063914aa56'
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  pkg "1Password-#{version}.pkg"

  uninstall pkgutil: 'com.agilebits.pkg.onepassword'

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

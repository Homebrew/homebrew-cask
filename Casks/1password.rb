cask '1password' do
  version '7.0.1'
  sha256 '5fa46bbff517cf5f8d6e795003b7832c2fe14f986bd58e6c9e371d24a8779628'

  # 1password.com was verified as official when first introduced to the cask
  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}",
          checkpoint: '6299d3c947f2e45f15b7a806aaf1bb99c8b938b4b2d1485e77fbb5d21d48e889'
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "1Password #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword7-helper',
               '~/Library/Application Scripts/com.agilebits.onepassword7',
               '~/Library/Application Scripts/com.agilebits.onepassword7-launcher',
               '~/Library/Application Scripts/com.agilebits.onepasswordnativemessaginghost',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword7-helper',
               '~/Library/Containers/com.agilebits.onepassword7',
               '~/Library/Containers/com.agilebits.onepassword7-launcher',
               '~/Library/Containers/com.agilebits.onepasswordnativemessaginghost',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
               '~/Library/Logs/1Password',
               '~/Library/Preferences/com.agilebits.onepassword7.plist',
             ]
end

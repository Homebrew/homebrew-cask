cask '1password' do
  version '7.4.3'
  sha256 '8a0db05c08c827cd2f636eb2bf5d97926c3f26eb5731a016add704e0535b1b06'

  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "1Password #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/*.agilebits.onepassword*',
               '~/Library/Containers/*.agilebits.onepassword*',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
               '~/Library/Logs/1Password',
               '~/Library/Preferences/com.agilebits.onepassword*',
             ]
end

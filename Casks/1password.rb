cask '1password' do
  version '7.4.2'
  sha256 '4f16c0efdab3bf81bd194940078cdb1cd136505839f3901dc6b3a3c844289f7f'

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

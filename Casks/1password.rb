cask '1password' do
  version '7.5'
  sha256 '64b98a5e1dfea7028ef483b679a97c6e0bf78b05b5cb3409e66ffc62e72be75c'

  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true
  conflicts_with cask: '1password-beta'
  depends_on macos: '>= :high_sierra'

  app "1Password #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/*.agilebits.onepassword*',
               '~/Library/Containers/*.agilebits.onepassword*',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
               '~/Library/Logs/1Password',
               '~/Library/Preferences/com.agilebits.onepassword*',
             ]
end

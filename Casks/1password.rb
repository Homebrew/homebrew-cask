cask '1password' do
  version '7.4.1'
  sha256 'ba2044c3a57c5f94066b6427ab922764166996a2fddcaf8654164e2d0a27ee6c'

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

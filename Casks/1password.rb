cask '1password' do
  version '7.0'
  sha256 '9c79de6b4ff9dadc7476cd140156087bd9ad12d66de0b7b05dbcb0a2f660d7ec'

  # 1password.com was verified as official when first introduced to the cask
  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}",
          checkpoint: '8e429ed32182657fe4b490486947246d91251853f0f39778d0976b2f8b3ba573'
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "1Password #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/com.agilebits.onepassword-osx',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
             ]
end

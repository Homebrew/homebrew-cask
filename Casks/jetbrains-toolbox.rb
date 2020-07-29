cask 'jetbrains-toolbox' do
  version '1.17.7139'
  sha256 'eba95dde3538c31e5c94c72f91cf52b1dcaf2b12e68872a0704b59597eb4cb15'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'

  zap trash: [
               '~/Library/Saved Application State/com.jetbrains.toolbox.savedState',
               '~/Library/Logs/JetBrains/Toolbox',
               '~/Library/Preferences/com.jetbrains.toolbox.renderer.plist',
               '~/Library/Application Support/JetBrains/Toolbox',
             ]
end

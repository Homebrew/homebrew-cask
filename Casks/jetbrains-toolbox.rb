cask 'jetbrains-toolbox' do
  version '1.17.7234'
  sha256 'e3b152181f83e3128fee4a397b35a518a3832fd79ae6a64d1e0b402d105a90c9'

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

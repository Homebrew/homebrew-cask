cask 'jetbrains-toolbox' do
  version '1.17.7275'
  sha256 '1f254071e97690ad2f61d3d2d6d8327456595ee14429eba0eb02309f0ab266e5'

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

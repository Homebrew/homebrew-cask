cask 'jetbrains-toolbox' do
  version '1.17.7018'
  sha256 '312aa469c392317afecc1661dd62301f1bd5bb0067706025fc06a99fa8edf7b7'

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

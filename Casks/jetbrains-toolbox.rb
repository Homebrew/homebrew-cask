cask 'jetbrains-toolbox' do
  version '1.6.2914'
  sha256 '566a7043491635228ae31b58dabbb085ae77671cfb4317afd0e0f48dc4706079'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: '899b32790d088c94c377a8716fc74847b55ff8061614328c9c895532b776b19d'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end

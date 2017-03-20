cask 'jetbrains-toolbox' do
  version '1.2.2314'
  sha256 '5e41085e46eed193f8629828a0532c38ca113e0b287a7be671ab3b65e7bbd969'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: '79c5e18845ea602d9824741c32f424e3601f39af81ae4cd8561536595d605cfb'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end

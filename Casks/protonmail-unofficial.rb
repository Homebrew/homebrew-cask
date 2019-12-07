cask 'protonmail-unofficial' do
  version '1.0.4'
  sha256 'cf7c1a0c2b4cd04635433d5ff17bc74362bb328679181277445676f0cdc4672c'

  url "https://github.com/protonmail-desktop/application/releases/download/#{version}/protonmail-desktop-unofficial-#{version}.dmg"
  appcast 'https://github.com/protonmail-desktop/application/releases.atom'
  name 'Protonmail Desktop'
  homepage 'https://github.com/protonmail-desktop/application'

  app 'Protonmail Desktop (unofficial).app'
end

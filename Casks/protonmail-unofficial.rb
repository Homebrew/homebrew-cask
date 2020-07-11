cask 'protonmail-unofficial' do
  version '1.0.6'
  sha256 '51910ef92eaf3e38907187cca638e60bff69516f2aa57d56a67041357d9018cf'

  url "https://github.com/protonmail-desktop/application/releases/download/v#{version}/protonmail-desktop-unofficial-#{version}.dmg"
  appcast 'https://github.com/protonmail-desktop/application/releases.atom'
  name 'Protonmail Desktop'
  homepage 'https://github.com/protonmail-desktop/application'

  app 'Protonmail Desktop (unofficial).app'
end

cask 'protonmail-unofficial' do
  version '0.5.9'
  sha256 '789d1e75195cfec1141727aed5b23aec9fb0c67dfa2346058c32982f07b3d745'

  url "https://github.com/protonmail-desktop/application/releases/download/v#{version}/protonmail-desktop-#{version}.dmg"
  appcast 'https://github.com/protonmail-desktop/application/releases.atom'
  name 'Protonmail Desktop'
  homepage 'https://github.com/protonmail-desktop/application'

  app 'Protonmail Desktop.app'
end

cask 'protonmail-unofficial' do
  version '0.5.8'
  sha256 'e9a9583e629ca5762281f422ad7bebc2f7569de25e31eec69fe896af8e502023'

  url "https://github.com/protonmail-desktop/application/releases/download/v#{version}/protonmail-desktop-#{version}.dmg"
  appcast 'https://github.com/protonmail-desktop/application/releases.atom',
          checkpoint: 'a587fdec24fc068aa31d9852c4f6c9670e87c16486ea80b37003c82004ed9f62'
  name 'Protonmail Desktop'
  homepage 'https://github.com/protonmail-desktop/application'

  app 'Protonmail Desktop.app'
end

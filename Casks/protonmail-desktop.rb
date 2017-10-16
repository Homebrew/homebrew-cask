cask 'protonmail-desktop' do
  version '0.5.1'
  sha256 'a02877dcc1760f75133245f12eb6768eb5c4201b152e2b56ae61720146e484ea'

  url "https://github.com/protonmail-desktop/application/releases/download/v#{version}/protonmail-desktop-#{version}.dmg"
  appcast 'https://github.com/protonmail-desktop/application/releases.atom',
          checkpoint: 'c9eb231a43b5d3d14a33925ddb979afae31b5a642881e5627bac0b16bb8da4ce'
  name 'Protonmail Desktop'
  homepage 'https://github.com/protonmail-desktop/application'

  app 'Protonmail Desktop.app'
end

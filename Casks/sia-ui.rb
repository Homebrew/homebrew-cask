cask 'sia-ui' do
  version '1.4.6'
  sha256 '4eda8ae4aa628cbcc87c7ed9bdebbc5a3e3ab604a05a60eb78d608ee88d5582f'

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  appcast 'https://sia.tech/1.f737981720cd8bbc13de.js'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end

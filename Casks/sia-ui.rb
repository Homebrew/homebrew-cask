cask 'sia-ui' do
  version '1.4.1.2'
  sha256 'ebd6d89a1012098a26f3da4338ae37a5b2194891f8176eaa1cb3cc5b678410e1'

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  appcast 'https://gitlab.com/api/v4/projects/7508674/releases'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end

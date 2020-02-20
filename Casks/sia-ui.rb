cask 'sia-ui' do
  version '1.4.2'
  sha256 'f57ff219aff302445211c6513ae9e8dcf6fa0d4c11ee716347a69a06f84583c6'

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  appcast 'https://gitlab.com/api/v4/projects/7508674/releases'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end

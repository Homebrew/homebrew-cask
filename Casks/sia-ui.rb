cask 'sia-ui' do
  version '1.4.2.0'
  sha256 '955d3fc95e3fe88baf25cf211263444beeea2efe5fa23489261378c84c888b74'

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  appcast 'https://gitlab.com/api/v4/projects/7508674/releases'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end

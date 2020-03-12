cask 'sia-ui' do
  version '1.4.3'
  sha256 '00e96c6e23ea67eca0d302382cd56bb8b23e08077133dc5ec856bc98a7a294b2'

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  appcast 'https://gitlab.com/api/v4/projects/7508674/releases'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end

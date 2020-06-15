cask 'sia-ui' do
  version '1.4.11'
  sha256 '93287c0c427522415346e8b79de5567f40017625bc2a7f920305e93e7b85cd61'

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end

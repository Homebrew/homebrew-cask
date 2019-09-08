cask 'sia-ui' do
  version '1.4.1.1'
  sha256 '541405884d119ba394e073c54462ff378770d7cb8a69cec8aa475130ef8e0522'

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end

cask 'sia-ui' do
  version '1.4.7'
  sha256 '041a6a9bba98db7ecde27a2ce46ddf1f129dd8dba72bc59b732b096e13334330'

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end

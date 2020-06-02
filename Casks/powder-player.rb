cask 'powder-player' do
  version '1.60'
  sha256 '66f532b975c12f3d5343e7589dcc6746e1a555416494bd8f6b80642464b7b66a'

  # github.com/jaruba/PowderPlayer/ was verified as official when first introduced to the cask
  url "https://github.com/jaruba/PowderPlayer/releases/download/v#{version}/PowderPlayer_v#{version}.dmg"
  appcast 'https://github.com/jaruba/PowderPlayer/releases.atom'
  name 'Powder Player'
  homepage 'https://powder.media/'

  app 'Powder Player.app'
end

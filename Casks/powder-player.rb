cask 'powder-player' do
  version '1.55'
  sha256 '8b52dc9772d255c753693c95ff4ca381dc4da8a897f7d3b51ff51728bf01c002'

  # github.com/jaruba/PowderPlayer was verified as official when first introduced to the cask
  url "https://github.com/jaruba/PowderPlayer/releases/download/v#{version}/PowderPlayer_v#{version}.dmg"
  appcast 'https://github.com/jaruba/PowderPlayer/releases.atom'
  name 'Powder Player'
  homepage 'https://powder.media/'

  app 'Powder Player.app'
end

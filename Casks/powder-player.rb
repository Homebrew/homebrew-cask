cask 'powder-player' do
  version '1.10'
  sha256 'd673d6ce0037198b7df888a77eb970224ea07efd6b61f6a2f708f779ce0c73bf'

  # github.com/jaruba/PowderPlayer was verified as official when first introduced to the cask
  url "https://github.com/jaruba/PowderPlayer/releases/download/v#{version}/PowderPlayer_v#{version}.dmg"
  appcast 'https://github.com/jaruba/PowderPlayer/releases.atom',
          checkpoint: '07ddaa5bd7ec516f4a8d99a3e6c4b1c93d9c7c93c455b3825e7f842cda7830b5'
  name 'Powder Player'
  homepage 'http://powder.media/'

  app 'Powder Player.app'
end

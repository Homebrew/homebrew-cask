cask 'powder-player' do
  version '1.20'
  sha256 'd5df37eca8446b2b832ca5c7d5d480df589b4ff05df4a0e0f5a6d58f3585c105'

  # github.com/jaruba/PowderPlayer was verified as official when first introduced to the cask
  url "https://github.com/jaruba/PowderPlayer/releases/download/v#{version}/PowderPlayer_v#{version}.dmg"
  appcast 'https://github.com/jaruba/PowderPlayer/releases.atom',
          checkpoint: '5b4e69b56e3e4d707caa648153b35b18ab3b33699702f5363a459ee4bd05bee3'
  name 'Powder Player'
  homepage 'http://powder.media/'

  app 'Powder Player.app'
end

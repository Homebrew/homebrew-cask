cask 'powder-player' do
  version '1.50'
  sha256 'c178993f8f4e210a1f2f7f945981376a27f2b32b62582ce51df450d6af860d39'

  # github.com/jaruba/PowderPlayer was verified as official when first introduced to the cask
  url "https://github.com/jaruba/PowderPlayer/releases/download/v#{version}/PowderPlayer_v#{version}.dmg"
  appcast 'https://github.com/jaruba/PowderPlayer/releases.atom'
  name 'Powder Player'
  homepage 'https://powder.media/'

  app 'Powder Player.app'
end

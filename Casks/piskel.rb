cask 'piskel' do
  version '0.6.0'
  sha256 '63796d9b8294b2789fee0396a1ed2ab679af920095be5168cac63730f6e7ad64'

  # dl.dropboxusercontent.com/u/17803671 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/17803671/piskel/standalone/mac/piskel-#{version}.dmg"
  appcast 'https://github.com/juliandescottes/piskel/releases.atom',
          checkpoint: '80cf25f310ff43f310b6c02525cc16b3fdb1fe8c66273843bc11ab758f2c5ed4'
  name 'Piskel'
  homepage 'http://www.piskelapp.com'

  app 'Piskel.app'
end

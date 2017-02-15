cask 'oryoki' do
  version '0.1.0'
  sha256 '162d1f42ab4baadfa1eeb4a3607b4384b510e7b0cabd1e160c62544473847579'

  # github.com/thmsbfft/oryoki was verified as official when first introduced to the cask
  url "https://github.com/thmsbfft/oryoki/releases/download/#{version}/Oryoki-#{version}.zip"
  appcast 'https://github.com/thmsbfft/oryoki/releases.atom',
          checkpoint: 'a2f6d39a0d20f944954e8e5d865d51a8c6bdf2f32d28cff1d97253c4414b4762'
  name 'Oryoki'
  homepage 'http://oryoki.io/'

  app 'Oryoki.app'
end

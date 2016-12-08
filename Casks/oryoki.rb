cask 'oryoki' do
  version '0.0.5'
  sha256 '320d6b57a0533f5167ad6b0574c9661e205a470e47224db2d28976f1d53a8814'

  # github.com/thmsbfft/oryoki was verified as official when first introduced to the cask
  url "https://github.com/thmsbfft/oryoki/releases/download/#{version}/Oryoki-#{version}.zip"
  appcast 'https://github.com/thmsbfft/oryoki/releases.atom',
          checkpoint: '03fb80bcfe6d5be99193c804add5dd4ecfb5383d6a35c3bae2dec8a5d3e6acd2'
  name 'Oryoki'
  homepage 'http://oryoki.io/'

  app 'Oryoki.app'
end

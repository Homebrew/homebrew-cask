cask 'oryoki' do
  version '0.1.0'
  sha256 '162d1f42ab4baadfa1eeb4a3607b4384b510e7b0cabd1e160c62544473847579'

  # github.com/thmsbfft/oryoki was verified as official when first introduced to the cask
  url "https://github.com/thmsbfft/oryoki/releases/download/#{version}/Oryoki-#{version}.zip"
  appcast 'https://github.com/thmsbfft/oryoki/releases.atom',
          checkpoint: '71bb3809095da7768cd8473fff26258612291f27f4c95a2cf80a677b9d097bcf'
  name 'Oryoki'
  name 'Ōryōki'
  name '応量器'
  homepage 'http://oryoki.io/'

  depends_on macos: '>= :el_capitan'

  app 'Oryoki.app'
end

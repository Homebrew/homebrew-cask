cask 'abricotine' do
  version '0.3.3'
  sha256 '3097ce48260bcacbd5ec9df6a4c77ed6d63f31fda2b7db75e5b8ad04afb95d8b'

  # github.com/brrd/Abricotine was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-osx-x64.zip"
  appcast 'https://github.com/brrd/Abricotine/releases.atom',
          checkpoint: '1ea84fd733feb1f4bf458b884fa6c3ec46240ee159f002877cc3c1242882e6b6'
  name 'abricotine'
  homepage 'https://abricotine.brrd.fr'
  license :gpl

  app 'Abricotine-darwin-x64/Abricotine.app'
end

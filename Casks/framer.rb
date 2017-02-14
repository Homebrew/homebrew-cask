cask 'framer' do
  version '80'
  sha256 'aa2acddf20e429f1f5e0120fc6cc2241d62d5e479225ffeee5be3c38e912cf4d'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '5f70c4fd031ffd0276d14130a174b4f212af854a8d6d5979135053b0853b6e14'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

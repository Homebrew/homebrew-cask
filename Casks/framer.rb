cask 'framer' do
  version '17389'
  sha256 '683b3304297dad1d63badab5d1e740a0c6c307821cb8de724fe0b824d1777cb4'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '0fc3a954e1a079b7a78e56ef568c5107fee060edd3275f0957bfdec0f1d55c29'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

cask 'framer' do
  version '9308'
  sha256 'dab2580f449dca7447b4e2f996f8cd84e51b0eea1434009b625f229be8c248f2'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '426eebe4aa9be3554f1ab11d3866ca3a2a341602c8e7150709312ecba847e28d'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

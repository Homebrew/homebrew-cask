cask 'framer' do
  version '9282'
  sha256 '2408052d95d4f2ec141464631b2bda920b1c6db05ef9a79890c6a419041f28cd'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'c1ec093fd1d47fe48322ccb30b1dd0def242b2cb1782a5dd427d61c0d6599b2f'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

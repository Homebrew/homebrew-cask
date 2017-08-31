cask 'framer' do
  version '9612'
  sha256 '8b5d3f713eed8997e88979084c12ae8032ef704b1a8cc2e965b25f6a71ba2af7'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'ed44bad48a44e2af8a887badaf4578ec8a1486ebbea424ebc9e6e2c011520db6'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

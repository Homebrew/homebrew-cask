cask 'framer' do
  version '9612'
  sha256 '8b5d3f713eed8997e88979084c12ae8032ef704b1a8cc2e965b25f6a71ba2af7'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '7d79d918700a080c75104d3830f66bdb518f56cb41b583c9112e9b2574e66802'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

cask 'framer' do
  version '74'
  sha256 '8f18323b7a526e54cf5ee6c09cf2bacdf53e51b0c5148369b03e5b830df83cda'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '95c74629f70878e70337b6a55382d89cd300de58feebb83018d0ae1511991b75'
  name 'Framer'
  homepage 'https://framerjs.com/'

  app 'Framer.app'
end

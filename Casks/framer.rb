cask 'framer' do
  version '72'
  sha256 '3040f38dad7681b600beb91434e7dccc68277d7239fb1a0dc50f98247bfc3cca'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '7dfb59037e01155f986d69f55a0be3d5c3e31986bfd76076c73a3748d1899a39'
  name 'Framer'
  homepage 'https://framerjs.com/'
  license :commercial

  app 'Framer.app'
end

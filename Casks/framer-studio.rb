cask 'framer-studio' do
  version '62'
  sha256 '59c0dfa6330ca18b1a1380e38162b5b99863eb9d29f2cb011e48dac0bb804723'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '92e25f0645ee8eff1dda9e7064c9d4ae1059f66ad9b02825482d0cee57d441e1'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end

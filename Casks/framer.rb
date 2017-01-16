cask 'framer' do
  version '80'
  sha256 'd0a9e90b5cb262eba66b204f01b5d04b5b1e42d9228e4280a451d644fe847221'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'b7264eba6f0aca694ad4857241fd50120ffc0266760ccf12ea8cfa6349935fb7'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

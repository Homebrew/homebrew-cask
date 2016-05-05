cask 'framer-studio' do
  version '62'
  sha256 '59c0dfa6330ca18b1a1380e38162b5b99863eb9d29f2cb011e48dac0bb804723'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end

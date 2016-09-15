cask 'framer' do
  version '70'
  sha256 '2c0eb4d76b02f6d52d7f85cfa8eadd0ba36d1f09b754e8fdbfab6a59bc7c57e7'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '02c0abffe6cf545bc06decb11bded7fa8ce965e10238d262a498d06216e4d369'
  name 'Framer'
  homepage 'https://framerjs.com/'
  license :commercial

  app 'Framer.app'
end

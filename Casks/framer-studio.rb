cask 'framer-studio' do
  version '60'
  sha256 '534e2caeb56d52be8aa81e20793f2bb982b67672b130737d43a68061fc2b85b0'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '9935d2617d2dc8db3506f72a39c922cbc914db4e1df4064992adfff8e91968a4'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end

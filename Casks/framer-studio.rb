cask 'framer-studio' do
  version '54'
  sha256 '9602d6b293c221a9b8fe6f10ea2be55deb612e65af8fe1bb93676ccf1e426de4'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '6ebb400d0dfccf60e51f3fa2487a10a987ac321c28c3d7bf840a305560b762a1'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end

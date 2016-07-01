cask 'framer' do
  version '66'
  sha256 '44a4d0371a1d3ff34a0be99f2a416c5c189c71cc9dfd8bb7ddd6c35ea62e361b'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '8ad1825c109af1e79d9629f2d9e90a9e2262b4d4288b5f047304cc86f512b120'
  name 'Framer'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer.app'
end

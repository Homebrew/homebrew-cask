cask 'framer' do
  version '9372'
  sha256 '014e2158aad8f448a5c3279327405f20e95d0f351247a2486afc703a04b86ce0'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '8a57b0a51def604acac9f443e560a284ec922b1d120d3a7110cc1c201b5d4fb8'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

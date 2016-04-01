cask 'framer-studio' do
  version '59'
  sha256 '4de9bde1afe58ed9ec31f2c7a7d0c368ad1772dcfcdc63b1dfb7f01e0699bc51'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'bf25e7d0f0008356aa12806ebd8330dcf0fc20af2064bcd59dd52ac3d05ef4e3'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end

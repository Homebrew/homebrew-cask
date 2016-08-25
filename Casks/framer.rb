cask 'framer' do
  version '69'
  sha256 '9cd9d822cc72310657da49f19ea5a2cce8e1f1418c5060b650871dd228e18ac7'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'fe390fa06e7a810079d4b55031bfd1d085fa80fdc4b44f3bad2c74b10c528934'
  name 'Framer'
  homepage 'https://framerjs.com/'
  license :commercial

  app 'Framer.app'
end

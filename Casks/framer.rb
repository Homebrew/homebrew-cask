cask 'framer' do
  version '9475'
  sha256 '89271d51287506d18c03d308a5eaf33c80fbd27dbf18694bc852789b474a37b9'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'cfa0c4116ced02b627e998cbfba1daf3a73939d9ad115c7854cbd0e3e89fe4ac'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

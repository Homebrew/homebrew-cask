cask 'framer' do
  version '75'
  sha256 '3270dc2b369ec148f2ef66cd1ea92df27afc9e9e4f816a1943be6cc6a0ff07b3'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '7fc7e0b530cde415760690ac9e63d039f506e4aab99e48d31c3024e1d3cd12fe'
  name 'Framer'
  homepage 'https://framerjs.com/'

  app 'Framer.app'
end

cask 'framer' do
  version '9693'
  sha256 '091de6bf11174b9c65e023f4b7327384f1f4f16372ebf363d332d0c4f1711901'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '08bb934f1d3243c9f2ffb54d3eb39e50d4a2e8451e1c18b5bacfb4401a47a964'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

cask 'framer' do
  version '63'
  sha256 '52e8086787d292cdb2089d9aa6a49cacc2c8d4705c4719ef9173e8b0ecb11e1d'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '0e24229b8de88317b1166cbbd112eb97fcbc01d80db2b95b5278d9999f09edeb'
  name 'Framer'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer.app'
end

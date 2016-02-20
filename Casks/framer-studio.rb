cask 'framer-studio' do
  version '52'
  sha256 '25ee6ca3c5f83ab2e38dc69e42c77fb2d47c0fca99c8537d17c03cdc2defbe4d'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/2751/1455041852/FramerStudio-2751.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '47a81a5f17948c94dd0b78301b57f35662fdd3f829383721528e97a99dda99ac'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end

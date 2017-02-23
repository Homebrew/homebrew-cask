cask 'framer' do
  version '85'
  sha256 '8840011469fc6aad89273fce123951188c454b6fc5a0877d915973289dcfd7fb'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'a404c5edf55ef4795669c316cb7a89a2676692a3ec483647fe1833d612b533a6'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

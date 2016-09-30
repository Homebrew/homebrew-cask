cask 'framer' do
  version '71'
  sha256 '7213a9a4d1d4052e596f013e62226a2e92f543ba8d944bebce679d8574190fbd'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '9aba5549e3b9ca0802b5d75e7e417a89498b3e374a3727acdd914afdd1c5ffa7'
  name 'Framer'
  homepage 'https://framerjs.com/'
  license :commercial

  app 'Framer.app'
end

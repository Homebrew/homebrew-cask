cask 'framer' do
  version '76'
  sha256 '963cd559cfb630d3b805025cbde3514c22db95aba175ad1e1c2862ee55f7cb07'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'cdffcd827eed8cd3bbb03058438b0c024bd8129d59a1f3f1423cc772330c152a'
  name 'Framer'
  homepage 'https://framerjs.com/'

  app 'Framer.app'
end

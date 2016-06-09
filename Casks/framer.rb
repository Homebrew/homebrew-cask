cask 'framer' do
  version '64'
  sha256 '466990280e40388ab17b012a9c42b992735e6f44cedceb10246aec3f16c885c0'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '3fa89b46cafba1d26df3d26ea35d2dd349bdc4787a60bd10c293f8b13a575e21'
  name 'Framer'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer.app'
end

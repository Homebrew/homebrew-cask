cask 'framer' do
  version '9840'
  sha256 '3b781c56d0639fe2f398170780be900ec131da79196e81dd30bb495a02fc8b1d'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '4e882f5ba475c44bf5957e71b910c00fdf1462baf44edaed5cfc074fd805c9b3'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

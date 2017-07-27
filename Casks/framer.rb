cask 'framer' do
  version '9520'
  sha256 '2ff5bcbf98e71c2b77bd4bd28fd3fa0d30826c48449e3a257508c935fd8694b3'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '934532390e02d0b5a5f9a2909a27356442f8775c0cb25ebbada19da11c6ee614'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

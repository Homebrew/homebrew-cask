cask 'framer' do
  version '90'
  sha256 'd4960d0794bea0b52bb7b78834b2555781ad12897c1455c9e2b2ce43f6a633bb'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '30959fb0c4e1b140195ae1acfbc65ed9557d4d852357548059fb33b4916e1f8b'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

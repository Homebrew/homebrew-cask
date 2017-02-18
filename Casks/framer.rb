cask 'framer' do
  version '83'
  sha256 '981aa2e9bf52cf02ea9b9839fa404956b73ec152599367099962064206ca2b3d'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'c5edd94445ae544fd9c29fde5608310234dd6133d1ed69852133a38e7734b524'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

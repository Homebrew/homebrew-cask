cask 'framer' do
  version '88'
  sha256 'e21d9da0358cfba73ab2f1539a27d7b4e65a596d29a6f2d96940d21fb0d20984'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'c322309f181fa2756e766e53f1a5a001f0a527b3571b39650c6767723895eff7'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

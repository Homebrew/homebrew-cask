cask 'framer' do
  version '15656'
  sha256 '30b4d99f4c34bc31f44806f8e3cb3e3f3f56dc84e99adb6015353f09741c1022'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '64b47c2f780a597e3ddb3c53afcdb7047d6ecf952feccfe97870e026657a8ed7'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

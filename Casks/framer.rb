cask 'framer' do
  version '84'
  sha256 'd1daf02ccb0f29fcaa0bffb0c8ab0c5239356790f8e8b9428031d6e16d87bcde'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '03374ee80fe23caee03426b2f1cf1bad66ac56c6f324f7be4f66cbb56e796a0c'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end

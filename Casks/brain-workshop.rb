cask 'brain-workshop' do
  version '4.8.4'
  sha256 'b795220306862f55e79e3de9c8cf8b4e8667e7bb1b0e3f59604b4d5f29f3f623'

  url "https://downloads.sourceforge.net/brainworkshop/brainworkshop/Brain%20Workshop%20#{version.major_minor}/brainworkshop-#{version}-MacOSX.zip"
  appcast 'https://sourceforge.net/projects/brainworkshop/rss?path=/brainworkshop',
          checkpoint: 'cb1e734cb05d2a36d1a8c238e5b4c78781e847e0c4785bc10d0f31959bbeb4d6'
  name 'Brain Workshop'
  homepage 'http://brainworkshop.sourceforge.net/'

  app 'Brain Workshop.app'
end

cask 'brain-workshop' do
  version '4.8.4'
  sha256 'b795220306862f55e79e3de9c8cf8b4e8667e7bb1b0e3f59604b4d5f29f3f623'

  url "https://downloads.sourceforge.net/project/brainworkshop/brainworkshop/Brain%20Workshop%20#{version.major_minor}/brainworkshop-#{version}-MacOSX.zip"
  appcast 'https://sourceforge.net/projects/brainworkshop/rss',
          checkpoint: '1ccc0bfce2eb9b5ecb96f7d6bd59f8cefaf754cc013a8c6c1efada717430081e'
  name 'Brain Workshop'
  homepage 'http://brainworkshop.sourceforge.net/'
  license :gpl

  app 'Brain Workshop.app'
end

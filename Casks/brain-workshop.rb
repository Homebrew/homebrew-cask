cask :v1 => 'brain-workshop' do
  version '4.8.4'
  sha256 'b795220306862f55e79e3de9c8cf8b4e8667e7bb1b0e3f59604b4d5f29f3f623'

  url "https://downloads.sourceforge.net/project/brainworkshop/brainworkshop/Brain%20Workshop%204.8/brainworkshop-#{version}-MacOSX.zip"
  homepage 'http://brainworkshop.sourceforge.net/'
  license :oss

  app 'Brain Workshop.app'
end

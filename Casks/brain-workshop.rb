cask "brain-workshop" do
  version "4.8.4"
  sha256 "b795220306862f55e79e3de9c8cf8b4e8667e7bb1b0e3f59604b4d5f29f3f623"

  # downloads.sourceforge.net/brainworkshop/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/brainworkshop/brainworkshop/Brain%20Workshop%20#{version.major_minor}/brainworkshop-#{version}-MacOSX.zip"
  appcast "https://sourceforge.net/projects/brainworkshop/rss?path=/brainworkshop"
  name "Brain Workshop"
  homepage "https://brainworkshop.sourceforge.io/"

  app "Brain Workshop.app"
end

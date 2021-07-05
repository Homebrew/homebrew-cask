cask "brain-workshop" do
  version "4.8.4"
  sha256 "b795220306862f55e79e3de9c8cf8b4e8667e7bb1b0e3f59604b4d5f29f3f623"

  url "https://downloads.sourceforge.net/brainworkshop/brainworkshop/Brain%20Workshop%20#{version.major_minor}/brainworkshop-#{version}-MacOSX.zip",
      verified: "downloads.sourceforge.net/brainworkshop/"
  name "Brain Workshop"
  homepage "https://brainworkshop.sourceforge.io/"

  livecheck do
    url :url
    regex(%r{url=.*?/brainworkshop[._-]v?(\d+(?:\.\d+)+)-MacOSX\.zip}i)
  end

  app "Brain Workshop.app"
end

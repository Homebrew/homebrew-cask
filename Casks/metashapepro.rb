cask "metashapepro" do
  version "1.7.3"
  sha256 "4d47852d67dd48a7f5bfd8e29cceb2194b9dbd32e728f5f8f6e8af733d297f90"

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Professional Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  app "MetashapePro.app"
end

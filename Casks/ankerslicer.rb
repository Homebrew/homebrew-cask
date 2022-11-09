cask "ankerslicer" do
  arch intel: "Intel", arm: "M1"
  version "0.7.5"
  sha256 :no_check

  url "https://public-make-moat-us.s3.us-east-2.amazonaws.com/ankermake/slicer/AnkerMake_Installer_Mac_#{arch}.dmg",
        verified: "public-make-moat-us.s3.us-east-2.amazonaws.com/ankermake/slicer/"

  name "ankerslicer"
  desc "Slicer for AnkerMake 3D printers"
  homepage "https://www.ankermake.com/software"

  app "AnkerSlicer.app"
end

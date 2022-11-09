cask "ankerslicer" do
  version "2.4.3"
  sha256 :no_check

  on_intel do
    url "https://public-make-moat-us.s3.us-east-2.amazonaws.com/ankermake/slicer/AnkerMake_Installer_Mac_Intel.dmg",
        verified: "public-make-moat-us.s3.us-east-2.amazonaws.com/ankermake/slicer/"
  end
  on_arm do
    url "https://public-make-moat-us.s3.us-east-2.amazonaws.com/ankermake/slicer/AnkerMake_Installer_Mac_M1.dmg",
        verified: "public-make-moat-us.s3.us-east-2.amazonaws.com/ankermake/slicer"
  end

  name "ankerslicer"
  desc "Slicer for AnkerMake 3D printers"
  homepage "https://www.ankermake.com/software"

  app "AnkerSlicer.app"
end

cask "ankermake" do
  arch arm: "M1", intel: "Intel"

  version "0.9.22_3"
  sha256 :no_check

  url "https://public-make-moat-us.s3.us-east-2.amazonaws.com/ankermake/slicer/AnkerMake_Installer_Mac_#{arch}.dmg",
      verified: "public-make-moat-us.s3.us-east-2.amazonaws.com/ankermake/slicer/"
  name "AnkerMake"
  desc "Slicer for AnkerMake 3D printers"
  homepage "https://www.ankermake.com/software"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :big_sur"

  app "AnkerMake.app"

  zap trash: [
    "~/Library/Application Support/AnkerMake",
    "~/Library/Application Support/AnkerSlicer",
    "~/Library/Caches/AnkerMake",
    "~/Library/Caches/AnkerSlicer",
    "~/Library/Preferences/com.ankermake.AnkerMake_64bit_fp.plist",
    "~/Library/Preferences/com.ankerslicer.AnkerMake_64bit_fp.plist",
  ]
end

cask "nx-studio" do
  version "1.5.0"
  sha256 "803e231464f589dcdcd958a57dd288f8824a06735e45b7e1abc18945d2e56890"

  url "https://download.nikonimglib.com/archive6/sRoLC00mMTZQ06g0yqe26VXd2O80/S-NXSTDO-#{version.split(".").map { |n| n.rjust(2, "0") }.join}MF-ALLIN-ALL___.dmg",
      verified: "download.nikonimglib.com/"
  name "NX Studio"
  desc "Nikon suite for viewing, processing, and editing photos and videos"
  homepage "https://imaging.nikon.com/imaging/lineup/software/nx_studio/"

  livecheck do
    url "https://downloadcenter.nikonimglib.com/en/download/sw/247.html"
    regex(/NX\s+Studio\s+Version\s+(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "Installer/NikonInstaller.pkg"

  uninstall pkgutil: [
    "jp.co.nikon.MovieEditor.main",
    "jp.co.nikon.NXStudio.main",
  ]

  zap trash: [
    "/Library/Application Support/Nikon",
    "/Library/ColorSync/Profiles/Nikon",
    "/Library/Preferences/jp.co.nikon.MovieEditor.plist",
    "/Library/Preferences/jp.co.nikon.NX Studio.plist",
    "~/Library/Application Support/Nikon",
    "~/Library/Caches/jp.co.nikon.NX-Studio",
    "~/Library/Preferences/jp.co.nikon.NX-Studio.plist",
  ]
end

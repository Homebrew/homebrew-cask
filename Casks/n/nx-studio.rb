cask "nx-studio" do
  version "1.8.0"
  sha256 "9a23fcb008352cd45cf0e376cab21969ecaefb1ff5afe7eb193de91d306a1c54"

  url "https://download.nikonimglib.com/archive7/2kyG900JRl6Y07h2lPK01I2p6y18/S-NXSTDO-#{version.split(".").map { |n| n.rjust(2, "0") }.join}MF-ALLIN-ALL___.dmg",
      verified: "download.nikonimglib.com/"
  name "NX Studio"
  desc "Nikon suite for viewing, processing, and editing photos and videos"
  homepage "https://imaging.nikon.com/imaging/lineup/software/nx_studio/"

  livecheck do
    url "https://downloadcenter.nikonimglib.com/en/products/564/NX_Studio.html"
    regex(/Ver\.\s+(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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

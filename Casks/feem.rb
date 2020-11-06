cask "feem" do
  version "4.3.0"
  sha256 "8243609c6cce4e5d004c51ca868ac7f7d78fe1110590e11dc97588a5ab732462"

  # f000.backblazeb2.com/file/feemdownloads/ was verified as official when first introduced to the cask
  url "https://f000.backblazeb2.com/file/feemdownloads/Feem_For_MacOSX_Installer_v#{version}.pkg"
  name "Feem"
  homepage "https://feem.io/"

  pkg "Feem_For_MacOSX_Installer_v#{version}.pkg"

  uninstall pkgutil: "com.feeperfect.airsend.mac"
end

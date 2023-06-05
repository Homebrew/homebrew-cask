cask "feem" do
  version "4.4.2"
  sha256 "5d5b36a31ad6f656cc36e5c014c1b93d3387d0a1c0313fd7db9d242b47203302"

  url "https://f000.backblazeb2.com/file/feemdownloads/Feem_Mac_#{version}_beta_Installer.pkg",
      verified: "f000.backblazeb2.com/file/feemdownloads/"
  name "Feem"
  desc "Local file transfer"
  homepage "https://feem.io/"

  livecheck do
    url "https://feem.link/feem-for-mac"
    regex(/Feem[._-]Mac[._-]v?(\d+(?:\.\d+)+).*?\.pkg/i)
    strategy :header_match
  end

  pkg "Feem_Mac_#{version}_beta_Installer.pkg"

  uninstall quit:    "com.feeperfect.airsend.mac",
            pkgutil: "com.feeperfect.airsend.mac"
end

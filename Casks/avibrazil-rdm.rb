cask "avibrazil-rdm" do
  version "2.2"
  sha256 "4baba78e89fb36ae022d5a234bb968402503ed277af59ae72e8270e9b6bef895"

  # avi.alkalay.net/software/RDM/ was verified as official when first introduced to the cask
  url "https://avi.alkalay.net/software/RDM/RDM-#{version}.pkg"
  appcast "https://avi.alkalay.net/software/RDM/"
  name "RDM"
  desc "Utility to set a Retina display to custom resolutions"
  homepage "https://github.com/avibrazil/RDM"

  depends_on macos: ">= :sierra"

  pkg "RDM-#{version}.pkg"

  uninstall quit:    "net.alkalay.RDM",
            pkgutil: "net.alkalay.RDM"

  zap trash: "~/Library/Preferences/net.alkalay.RDM.plist"
end

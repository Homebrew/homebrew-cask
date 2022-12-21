cask "aschbacd-rdm" do
  version "2.2"
  sha256 "2ef1dfc42fa689e1698c07dad2752f5796da82a674a8599541771e203dbc6a78"

  url "https://github.com/aschbacd/RDM/releases/download/v#{version}/RDM.pkg"
  name "RDM"
  desc "Utility to set a Retina display to custom resolutions"
  homepage "https://github.com/aschbacd/RDM"

  depends_on macos: ">= :sierra"

  pkg "RDM.pkg"

  uninstall quit:    "net.alkalay.RDM",
            pkgutil: "net.alkalay.RDM"

  zap trash: "~/Library/Preferences/net.alkalay.RDM.plist"
end

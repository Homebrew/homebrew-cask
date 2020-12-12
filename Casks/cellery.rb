cask "cellery" do
  version "0.6.0"
  sha256 "0f65ba358402ce2abd3b37ac8e12a069585fabaead0f00fb105fef9897aba928"

  # github.com/wso2-cellery/sdk/ was verified as official when first introduced to the cask
  url "https://github.com/wso2-cellery/sdk/releases/download/v#{version}/cellery-macos-installer-x64-#{version}.pkg"
  appcast "github.com/wso2-cellery/sdk/releases.atom"
  name "Cellery"
  homepage "https://wso2-cellery.github.io/"

  depends_on cask: "osxfuse"
  depends_on formula: "python"
  depends_on formula: "torsocks"
  depends_on formula: "sshfs"

  pkg "cellery-macos-installer-x64-#{version}.pkg"

  uninstall pkgutil: "org.cellery.*"
end

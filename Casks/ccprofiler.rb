cask "ccprofiler" do
  version "1.1.1"
  sha256 "d841a8f473b041ddb95516f6fd1afbae754be866c3df0e9820ca81b21162eb41"

  url "https://downloads.xrite.com/Downloads/Software/ccProfiler/v#{version.major_minor_patch}/mac/ccProfiler.zip",
      verified: "xrite.com"
  name "ccProfiler"
  desc "Monitor colibration for Calibrite ColorChecker Display Pro & Plus"
  homepage "https://calibrite.com/"

  livecheck do
    url "https://calibrite.com/us/software-downloads/"
    regex(%r{\d\.\d\.\d(?=/mac/ccProfiler)}i)
  end

  depends_on macos: ">= :catalina"

  pkg "ccProfiler.pkg"

  uninstall pkgutil: [
              "com.xrite.xritedeviceservices.installer.pkg",
              "com.calibrite.ccprofiler.pkg"
            ]
            
  caveats do
    reboot
  end
end

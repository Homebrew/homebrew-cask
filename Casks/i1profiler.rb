cask "i1profiler" do
  version "3.6.3.16999"
  sha256 "38af8e61d9c2b6101d78c1c1c9d5c99d6c5ca00cc781a51ccda6b042b6e9ca3c"

  url "https://downloads.xrite.com/downloads/software/i1Profiler/#{version.major_minor_patch}/Mac/i1Profiler.zip"
  name "i1Profiler"
  name "Eye-One Profiler"
  name "i1Publish"
  desc "Automation and creative controls for photographers and designers"
  homepage "https://www.xrite.com/service-support/product-support/formulation-and-qc-software/i1profiler"

  livecheck do
    url "https://downloads.xrite.com/downloads/autoupdate/i1profiler_mac_appcast.xml"
    strategy :sparkle
  end

  pkg "i1Profiler.pkg"

  uninstall pkgutil:   [
              "com.xrite.hasp.installer.*",
              "com.xrite.i1profiler.*",
              "com.xrite.xritedeviceservices.*",
            ],
            launchctl: [
              "com.aladdin.aksusbd",
              "com.aladdin.hasplmd",
            ],
            delete:    "/Applications/i1Profiler/i1Profiler.app",
            rmdir:     "/Applications/i1Profiler"

  caveats do
    reboot
  end
end

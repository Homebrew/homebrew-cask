cask "i1profiler" do
  version "3.6.1.16841"
  sha256 "66f6bb8b57d40950eec1f8fabd935ce6e4e4b7e7c77793fce1c8eb90afec7765"

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
              "com.xrite.i1profiler.*",
              "com.xrite.xritedeviceservices.*",
              "com.xrite.hasp.installer.*",
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

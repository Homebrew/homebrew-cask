cask "i1profiler" do
  version "3.7.1.17587"
  sha256 "e10a99e5ee864eb5dc7ebf992905c187c5ac79724ba06b81f21def27108521e5"

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
            delete:    [
              "/Applications/i1Profiler/i1Profiler.app",
              "/Library/Application Support/X-Rite",
            ],
            rmdir:     "/Applications/i1Profiler"

  zap trash: [
    "~/Library/Caches/com.x-rite.i1Profiler",
    "~/Library/HTTPStorages/com.x-rite.i1Profiler",
    "~/Library/HTTPStorages/com.x-rite.i1Profiler.binarycookies",
    "~/Library/Preferences/com.x-rite.i1Profiler.plist",
    "~/Library/Saved Application State/com.x-rite.i1Profiler.savedState",
    "~/Library/WebKit/com.x-rite.i1Profiler",
  ]

  caveats do
    reboot
  end
end

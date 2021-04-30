cask "i1profiler" do
  version "3.3.0.13512"
  sha256 "c8617cde690a33ad37c1b6013d800607b739cac27d3b65d487c141679105598e"

  url "https://downloads.xrite.com/downloads/software/i1Profiler/#{version.major_minor_patch}/Mac/i1Profiler.zip"
  name "i1Profiler"
  name "Eye-One Profiler"
  name "i1Publish"
  homepage "https://www.xrite.com/service-support/downloads/I/i1Profiler-i1Publish_V#{version.major_minor_patch.dots_to_underscores}"

  livecheck do
    url "http://www.xrite.com/Downloads/Autoupdate/i1profiler_mac_appcast.xml"
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

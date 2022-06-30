cask "i1profiler" do
  version "3.5.0.15651"
  sha256 "3baa9efeacc2b73a8fff5839f07cb97efe109c62886f4d56c06c7d8005950e4a"

  url "https://downloads.xrite.com/downloads/software/i1Profiler/#{version.major_minor_patch}/Mac/i1Profiler.zip"
  name "i1Profiler"
  name "Eye-One Profiler"
  name "i1Publish"
  desc "Automation and creative controls for photographers and designers"
  homepage "https://www.xrite.com/service-support/downloads/I/i1Profiler-i1Publish_V#{version.major_minor_patch.dots_to_underscores}"

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

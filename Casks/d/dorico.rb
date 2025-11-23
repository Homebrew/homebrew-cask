cask "dorico" do
  version "6.1.10"
  sha256 "890cbaf877eb5bde79fe38c8677c640be3231eaf0a845b3a1e116515d1489b75"

  url "https://download.steinberg.net/support/temporary/Dorico_#{version}/Dorico_#{version}_Installer_mac.dmg"
  name "Dorico"
  desc "Scoring software"
  homepage "https://www.steinberg.net/dorico/"

  livecheck do
    url "https://o.steinberg.net/en/support/downloads/dorico_#{version.major}.html"
    regex(%r{href=.*?/Dorico[._-]v?(\d+(?:\.\d+)*)[._-]Installer[._-]mac\.dmg}i)
  end

  auto_updates true
  depends_on cask: [
    "steinberg-activation-manager",
    "steinberg-library-manager",
    "steinberg-mediabay",
  ]
  depends_on macos: ">= :monterey"

  pkg "Dorico #{version.major}.pkg"

  uninstall quit:    [
              "com.steinberg.AudioFileHandler.MPG3",
              "com.steinberg.AudioFileHandler.Xiph",
              "com.steinberg.baios",
              "com.steinberg.CoreAudio2ASIO",
              "com.steinberg.dorico#{version.major}",
              "com.steinberg.dorico.*",
              "com.steinberg.mediaservice",
              "com.steinberg.videoengine",
              "com.steinberg.vst3.doricobeep",
              "com.steinberg.vst3.pluginset.vstaudioengine",
              "com.steinberg.vst3.vstaudioengine",
              "com.steinberg.VSTPlugManager",
              "net.steinberg.crashlog-uploader",
              "net.steinberg.dorico_extractaudio",
            ],
            pkgutil: [
              "com.steinberg.dorico#{version.major}",
              "com.steinberg.dorico.*",
              "net.steinberg.Dorico#{version.major}.AppSupport",
              "net.steinberg.vstsound.*",
            ],
            delete:  "/Applications/Dorico #{version.major}.app"

  zap trash: [
    "/Library/Application Support/Steinberg/Dorico #{version.major}",
    "/Users/Shared/Dorico Example Projects",
    "~/Library/Application Scripts/com.steinberg.dorico*",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.steinberg.iosdorico*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.steinberg.dorico#{version.major}.sfl*",
    "~/Library/Application Support/Steinberg/Dorico #{version.major}",
    "~/Library/Caches/Dorico #{version.major}",
    "~/Library/Caches/Steinberg/Dorico",
    "~/Library/Containers/com.steinberg.dorico*",
    "~/Library/Mobile Documents/iCloud~com~steinberg~iosdorico",
    "~/Library/Preferences/com.steinberg-dorico#{version.major}.dialogGeometry.plist",
    "~/Library/Preferences/com.steinberg.dorico#{version.major}.plist",
    "~/Library/Preferences/Dorico #{version.major} AudioEngine",
    "~/Library/Saved Application State/com.steinberg.dorico#{version.major}.savedState",
  ]
end

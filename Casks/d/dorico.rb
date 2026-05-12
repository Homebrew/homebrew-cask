cask "dorico" do
  version "6.2.20,ebb343b1-4034-4e2e-8655-536e2ef378a0"
  sha256 "672e6b29a3888b9102a4c9d259812bd0df1973eaa2f81e4a3e5baf92053394a3"

  url "https://download.steinberg.net/automated_updates/sda_downloads/#{version.csv.second}/Dorico_#{version.csv.first}_Installer_mac.dmg"
  name "Dorico"
  desc "Scoring software"
  homepage "https://www.steinberg.net/dorico/"

  livecheck do
    url "https://o.steinberg.net/en/support/downloads/dorico_#{version.major}.html"
    regex(%r{href=.*?/([\h-]+)/Dorico[._-]v?(\d+(?:\.\d+)*)[._-]Installer[._-]mac\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true
  depends_on cask: [
    "steinberg-activation-manager",
    "steinberg-library-manager",
    "steinberg-mediabay",
  ]
  depends_on macos: :monterey

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

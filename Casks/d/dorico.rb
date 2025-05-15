cask "dorico" do
  version "6,c2180b3c-bfcb-4cd1-afc5-ea41e618c728"
  sha256 "f99ba5ea6d5ee69fde8f4707c62ea6162198fe79eb2ff14dd72f2ddc24a4a603"

  url "https://download.steinberg.net/automated_updates/sda_downloads/#{version.csv.second}/Dorico_#{version.csv.first}_Installer_mac.dmg"
  name "Dorico"
  desc "Scoring software"
  homepage "https://www.steinberg.net/dorico/"

  livecheck do
    url "https://o.steinberg.net/en/support/downloads/dorico_#{version.csv.first.major}.html"
    regex(%r{href=.*?downloads/([^/]+)/Dorico[._-]v?(\d+(?:\.\d+)*)[._-]Installer[._-]mac\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on cask: [
    "steinberg-activation-manager",
    "steinberg-library-manager",
    "steinberg-mediabay",
  ]
  depends_on macos: ">= :catalina"

  pkg "Dorico #{version.csv.first.major}.pkg"

  uninstall quit:    [
              "com.steinberg.AudioFileHandler.MPG3",
              "com.steinberg.AudioFileHandler.Xiph",
              "com.steinberg.baios",
              "com.steinberg.CoreAudio2ASIO",
              "com.steinberg.dorico#{version.csv.first.major}",
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
              "com.steinberg.dorico#{version.csv.first.major}",
              "com.steinberg.dorico.*",
              "net.steinberg.Dorico#{version.csv.first.major}.AppSupport",
              "net.steinberg.vstsound.*",
            ],
            delete:  "/Applications/Dorico #{version.csv.first.major}.app"

  zap trash: [
    "/Library/Application Support/Steinberg/Dorico #{version.csv.first.major}",
    "/Users/Shared/Dorico Example Projects",
    "~/Library/Application Scripts/com.steinberg.dorico*",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.steinberg.iosdorico*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.steinberg.dorico#{version.csv.first.major}.sfl*",
    "~/Library/Application Support/Steinberg/Dorico #{version.csv.first.major}",
    "~/Library/Caches/Dorico #{version.csv.first.major}",
    "~/Library/Caches/Steinberg/Dorico",
    "~/Library/Containers/com.steinberg.dorico*",
    "~/Library/Mobile Documents/iCloud~com~steinberg~iosdorico",
    "~/Library/Preferences/com.steinberg-dorico#{version.csv.first.major}.dialogGeometry.plist",
    "~/Library/Preferences/com.steinberg.dorico#{version.csv.first.major}.plist",
    "~/Library/Preferences/Dorico #{version.csv.first.major} AudioEngine",
    "~/Library/Saved Application State/com.steinberg.dorico#{version.csv.first.major}.savedState",
  ]
end

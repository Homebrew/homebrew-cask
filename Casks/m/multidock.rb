cask "multidock" do
  version "2.16"
  sha256 :no_check

  url "https://macplus-software.com/downloads/MultiDock%20#{version.major}.zip"
  name "MultiDock"
  name "MultiDock #{version.major}"
  desc "Extra panels for apps, files and folders"
  homepage "https://noteifyapp.com/multidock/"

  livecheck do
    url "https://macplus-software.com/downloads/MultiDock%20#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "MultiDock #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/MultiDock #{version.major}_*.plist",
    "~/Library/Application Support/MultiDock #{version.major}",
    "~/Library/Caches/com.sergiigerasimenko.MultiDock#{version.major}",
    "~/Library/HTTPStorages/com.sergiigerasimenko.MultiDock#{version.major}*",
    "~/Library/Preferences/com.sergiigerasimenko.MultiDock#{version.major}.plist",
    "~/Library/Saved Application State/com.sergiigerasimenko.MultiDock#{version.major}.savedState",
    "~/Library/WebKit/com.sergiigerasimenko.MultiDock#{version.major}",
  ]
end

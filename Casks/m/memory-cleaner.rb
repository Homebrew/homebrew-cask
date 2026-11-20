cask "memory-cleaner" do
  version "5.5.4,276"
  sha256 "7115196e0a529dca67b401247a69416666fa54ccc423dc107237c445b8124957"

  url "https://download.nektony.com/download/memory-cleaner/dmg/memory-cleaner.dmg?build=#{version.csv.second}"
  name "Memory Cleaner"
  desc "Free up RAM manually and automatically"
  homepage "https://nektony.com/memory-cleaner"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/memory-cleaner-x-site/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Memory Cleaner #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.Memory-Cleaner-SII*",
    "~/Library/Application Scripts/com.nektony.Memory-Cleaner-SII*.launcher",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nektony.memory-cleaner-siii.sfl*",
    "~/Library/Application Support/com.nektony.Memory-Cleaner-SII*",
    "~/Library/Application Support/Memory Cleaner",
    "~/Library/Caches/com.nektony.Memory-Cleaner-SII*",
    "~/Library/Cookies/com.nektony.Memory-Cleaner-SII.binarycookies",
    "~/Library/HTTPStorages/com.nektony.Memory-Cleaner-SII*",
    "~/Library/Preferences/com.nektony.Memory-Cleaner-SII*.plist",
  ]
end

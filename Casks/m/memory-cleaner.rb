cask "memory-cleaner" do
  version "5.5.2,269"
  sha256 "d05edd300d033b1cc4d81b33145cce4ddd2d2379619a3fd1815c620aa9ee802c"

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
    "~/Library/Application Support/Memory Cleaner",
    "~/Library/Caches/com.nektony.Memory-Cleaner-SII*",
    "~/Library/Cookies/com.nektony.Memory-Cleaner-SII.binarycookies",
    "~/Library/HTTPStorages/com.nektony.Memory-Cleaner-SII*",
    "~/Library/Preferences/com.nektony.Memory-Cleaner-SII*.plist",
  ]
end

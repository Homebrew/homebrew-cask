cask "memory-cleaner" do
  version "5.5.1,260"
  sha256 "ccc49e1c55c0cd2a65d8e2db7cb0a68379a64c87848036b39ad5689d8f408b69"

  url "https://download.nektony.com/download/memory-cleaner/dmg/memory-cleaner.dmg?build=#{version.csv.second}"
  name "Memory Cleaner"
  desc "Free up RAM manually and automatically"
  homepage "https://nektony.com/memory-cleaner"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/memory-cleaner-x-site/update/update.xml"
    strategy :sparkle
  end

  auto_updates true

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

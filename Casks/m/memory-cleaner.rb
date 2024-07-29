cask "memory-cleaner" do
  version "5.3.3"
  sha256 :no_check

  url "https://nektony.com/download/memory-cleaner/dmg/memory-cleaner.dmg"
  name "Memory Cleaner"
  desc "Free up RAM manually and automatically"
  homepage "https://nektony.com/memory-cleaner"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/memory-cleaner-x-site/update/update.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Memory Cleaner #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.Memory-Cleaner-SII",
    "~/Library/Application Scripts/com.nektony.Memory-Cleaner-SII.launcher",
    "~/Library/Application Support/Memory Cleaner",
    "~/Library/Caches/com.nektony.Memory-Cleaner-SII",
    "~/Library/Cookies/com.nektony.Memory-Cleaner-SII.binarycookies",
    "~/Library/Preferences/com.nektony.Memory-Cleaner-SII.plist",
  ]
end

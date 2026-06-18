cask "radix" do
  version "1.2.0"
  sha256 "b87a129562f5f85d1c1e32df24d0c7ef4f363ee89cbbb27b406bb6cb1f8cc4da"

  url "https://github.com/colinvkim/Radix/releases/download/v#{version}/Radix.zip",
      verified: "github.com/colinvkim/Radix/"
  name "Radix"
  desc "Disk space analyzer"
  homepage "https://radix.colinkim.dev/"

  livecheck do
    url "https://radix.colinkim.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Radix.app"

  zap trash: [
    "~/Library/Caches/com.colinkim.Radix",
    "~/Library/HTTPStorages/com.colinkim.Radix",
    "~/Library/Preferences/com.colinkim.Radix.plist",
    "~/Library/Saved Application State/com.colinkim.Radix.savedState",
  ]
end

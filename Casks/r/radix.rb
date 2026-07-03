cask "radix" do
  version "1.4.0"
  sha256 "7d3d8ac7a91a677e5445d8a6515fec7418b021cb277b4232436056cb126b6ee9"

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

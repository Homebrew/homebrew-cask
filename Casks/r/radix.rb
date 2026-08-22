cask "radix" do
  version "1.7.0"
  sha256 "69eb62f9cc318bcb0f04c56c2cfd4d4b89640ccb51ed75b663970d81c87aebca"

  url "https://github.com/colinvkim/Radix/releases/download/v#{version}/Radix.zip",
      verified: "github.com/colinvkim/Radix/"
  name "Radix"
  desc "Disk space analyzer"
  homepage "https://tryradix.app/"

  livecheck do
    url "https://tryradix.app/appcast.xml"
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

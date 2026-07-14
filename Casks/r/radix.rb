cask "radix" do
  version "1.5.1"
  sha256 "cc678b7bc8c0c0ab8b4f22cafc98214068fc3538bdd273e1e9e4183d89062251"

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

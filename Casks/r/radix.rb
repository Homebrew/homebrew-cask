cask "radix" do
  version "1.5.0"
  sha256 "057c9b2a3746a88db5517386fcd6fcd0bf05fadc9ffa81283a5f4894e5bc759f"

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

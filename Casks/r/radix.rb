cask "radix" do
  version "1.9.0"
  sha256 "6bb66389c4da2e7f322bf91e180fc92566b4658209809a44320ad1c508db55e1"

  url "https://github.com/colinvkim/Radix/releases/download/v#{version}/Radix.zip"
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

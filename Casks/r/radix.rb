cask "radix" do
  version "1.8.0"
  sha256 "4105b6b830562c1049390d0052488e38fc6cfd822f2bada286997fee4533b1ad"

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

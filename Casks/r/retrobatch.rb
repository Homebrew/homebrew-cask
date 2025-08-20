cask "retrobatch" do
  version "2.3"
  sha256 "33f40deeafe495d2000d4bdfc42498a655d9b91d783c7d875798b6eb9266b696"

  url "https://flyingmeat.com/download/Retrobatch-#{version}.zip"
  name "Retrobatch"
  desc "Batch image processor"
  homepage "https://flyingmeat.com/retrobatch/"

  livecheck do
    url "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Retrobatch.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.flyingmeat.retrobatch.sfl*",
    "~/Library/Application Support/Retrobatch",
    "~/Library/HTTPStorages/com.flyingmeat.Retrobatch",
    "~/Library/Preferences/com.flyingmeat.Retrobatch.plist",
    "~/Library/Saved Application State/com.flyingmeat.Retrobatch.savedState",
  ]
end

cask "retrobatch" do
  version "2.2.1"
  sha256 "9d9f11d72c2f17e87778837f89dabcdd61a6132e83b2f0302619554e91f3aed6"

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

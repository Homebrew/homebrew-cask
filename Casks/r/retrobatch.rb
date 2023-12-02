cask "retrobatch" do
  version "2.0.3"
  sha256 "2acb6b4728f6457aee94ef0b968d77ed1cd4dde542b2aa789c475d026a7a8e32"

  url "https://flyingmeat.com/download/Retrobatch-#{version}.zip"
  name "Retrobatch"
  desc "Batch image processor"
  homepage "https://flyingmeat.com/retrobatch/"

  livecheck do
    url "https://www.flyingmeat.com/download/retrobatch#{version.major}update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Retrobatch.app"

  zap trash: [
    "Library/Application Support/Retrobatch",
    "Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/" \
    "com.flyingmeat.retrobatch.sfl*",
    "Library/HTTPStorages/com.flyingmeat.Retrobatch",
    "Library/Saved Application State/com.flyingmeat.Retrobatch.savedState",
    "Library/Preferences/com.flyingmeat.Retrobatch.plist",
  ]
end

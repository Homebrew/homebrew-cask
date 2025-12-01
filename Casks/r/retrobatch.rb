cask "retrobatch" do
  version "2.3.1"
  sha256 "732088dfde0d659bd4eabbdcd7ab587dfb57af9989c2cccd19788e86d1130dc6"

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

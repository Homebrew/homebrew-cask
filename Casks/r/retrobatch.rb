cask "retrobatch" do
  version "2.1"
  sha256 "90437e0b5136871b87568072a648bb12ba59503d9da8ddf831763e11f8d14171"

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

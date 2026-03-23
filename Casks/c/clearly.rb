cask "clearly" do
  version "1.6.0"
  sha256 "33f07501517048edd66c4ad04c4c3e2d00ac996847df842427fc13697efa5dc1"

  url "https://github.com/Shpigford/clearly/releases/download/v#{version}/Clearly.dmg",
      verified: "github.com/Shpigford/clearly/"
  name "Clearly"
  desc "Markdown editor"
  homepage "https://clearly.md/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Clearly.app"

  zap trash: [
        "~/Library/Application Scripts/com.sabotage.clearly*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sabotage.clearly.sfl*",
        "~/Library/Containers/com.sabotage.clearly*",
      ],
      rmdir: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments"
end

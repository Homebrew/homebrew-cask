cask "codeedit" do
  version "0.2.0"
  sha256 "97ac35c2e3a93406f36a1abf367baf8d5f4c9af595d17e2f54c184f2e151f260"

  url "https://github.com/CodeEditApp/CodeEdit/releases/download/v#{version}/CodeEdit.dmg",
      verified: "github.com/CodeEditApp/CodeEdit/"
  name "CodeEdit"
  desc "Code editor"
  homepage "https://www.codeedit.app/"

  depends_on macos: ">= :ventura"

  app "CodeEdit.app"

  zap trash: [
    "~/Library/Application Scripts/*.CodeEdit.OpenWithCodeEdit",
    "~/Library/Application Support/CodeEdit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/*.codeedit.sfl*",
    "~/Library/Caches/*.CodeEdit",
    "~/Library/Containers/*.CodeEdit.OpenWithCodeEdit",
    "~/Library/HTTPStorages/*.CodeEdit",
    "~/Library/Preferences/*.CodeEdit.plist",
    "~/Library/Saved Application State/*.CodeEdit.savedState",
  ]
end

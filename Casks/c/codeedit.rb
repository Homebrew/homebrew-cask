cask "codeedit" do
  version "0.3.0"
  sha256 "e78057065027043328e5aead2c62b7ae417d7efd31688562fe5cc88de1978032"

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

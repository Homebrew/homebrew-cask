cask "codeedit" do
  version "0.3.4"
  sha256 "9604bca5194f7ee01706b997eaedd783245fc741549035870a5532e181452bce"

  url "https://github.com/CodeEditApp/CodeEdit/releases/download/v#{version}/CodeEdit.dmg",
      verified: "github.com/CodeEditApp/CodeEdit/"
  name "CodeEdit"
  desc "Code editor"
  homepage "https://www.codeedit.app/"

  auto_updates true
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

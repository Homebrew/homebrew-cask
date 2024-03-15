cask "codeedit" do
  version "0.1.0"
  sha256 "cd2ac8884c5fada00841bf1a092eeebedf104c924d5541d034931ff742d56466"

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

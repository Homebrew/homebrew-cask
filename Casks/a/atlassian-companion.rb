cask "atlassian-companion" do
  version "3.2.0"
  sha256 "d8587ce64c4f6be2e0b95a9e64361dc5a7e6e718bd62af855887e28e8306bbc0"

  url "https://update-nucleus.atlassian.com/Atlassian-Companion/291cb34fe2296e5fb82b83a04704c9b4/darwin/x64/Atlassian%20Companion-darwin-x64-#{version}.zip"
  name "Atlassian Companion"
  desc "Edits Confluence and Jira attachments in their native apps"
  homepage "https://confluence.atlassian.com/display/DOC/Install+Atlassian+Companion"

  livecheck do
    url "https://update-nucleus.atlassian.com/Atlassian-Companion/291cb34fe2296e5fb82b83a04704c9b4/darwin/x64/RELEASES.json"
    regex(/currentRelease"\s*:\s*"(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :monterey

  app "Atlassian Companion.app"

  zap trash: [
    "~/Library/Caches/com.electron.companion",
    "~/Library/HTTPStorages/com.electron.companion",
    "~/Library/Preferences/com.electron.companion.plist",
    "~/Library/Saved Application State/com.electron.companion.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

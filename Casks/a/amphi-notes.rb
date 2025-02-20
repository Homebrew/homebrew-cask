cask "amphi-notes" do
  version "1.0.0"
  sha256 "b9233f738852a128dd87e476a5ce751779587bd2ea7212240bab1f6cb08aea3c"

  url "https://amphi.site/releases/notes/notes-macos-#{version}.dmg",
      verified: "amphi.site/"
  name "Notes"
  desc "Note-taking app that allows users to sync data via a self-hosted server"
  homepage "https://amphi.site/"

  depends_on macos: ">= :big_sur"

  app "Notes.app"

  zap trash: [
    "~/Library/Application Scripts/com.amphi.notes",
    "~/Library/Containers/com.amphi.notes",
    "~/Library/Preferences/com.amphi.notes.plist",
    "~/Library/Saved Application State/com.amphi.notes.savedState",
  ]
end

cask "beaver-notes" do
  version "3.9.0"
  sha256 "865a42df7824f05749146a4bee0ad88d7e298c5ad8124436fe58ff0b347acf93"

  url "https://github.com/Beaver-Notes/Beaver-Notes/releases/download/#{version}/Beaver-notes-#{version}-universal.dmg",
      verified: "github.com/Beaver-Notes/Beaver-Notes/"
  name "Beaver Notes"
  desc "Privacy-focused note-taking app"
  homepage "https://beavernotes.com/"

  depends_on macos: ">= :catalina"

  app "Beaver-Notes.app"

  zap trash: [
    "~/Library/Caches/com.danielerolli.beaver-notes",
    "~/Library/Preferences/com.danielerolli.beaver-notes.plist",
    "~/Library/Saved Application State/com.danielerolli.beaver-notes.savedState",
  ]
end

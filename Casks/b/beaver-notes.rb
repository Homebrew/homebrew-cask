cask "beaver-notes" do
  version "4.4.0"
  sha256 "c2b83192c2b25542e8c8d5ffcaa4152e0175208de1d5caefa83095c6fd064f43"

  url "https://github.com/Beaver-Notes/Beaver-Notes/releases/download/#{version}/Beaver-notes-#{version}-universal.dmg",
      verified: "github.com/Beaver-Notes/Beaver-Notes/"
  name "Beaver Notes"
  desc "Privacy-focused note-taking app"
  homepage "https://beavernotes.com/"

  depends_on macos: ">= :monterey"

  app "Beaver Notes.app"

  zap trash: [
    "~/Library/Caches/com.danielerolli.beaver-notes",
    "~/Library/Preferences/com.danielerolli.beaver-notes.plist",
    "~/Library/Saved Application State/com.danielerolli.beaver-notes.savedState",
  ]
end

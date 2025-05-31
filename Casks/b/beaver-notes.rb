cask "beaver-notes" do
  version "4.0.0"
  sha256 "633630cb1d8b96df25edb4dd8328910f61d53c19370d8344fb65642303a45d7c"

  url "https://github.com/Beaver-Notes/Beaver-Notes/releases/download/#{version}/Beaver-notes-#{version}-universal.dmg",
      verified: "github.com/Beaver-Notes/Beaver-Notes/"
  name "Beaver Notes"
  desc "Privacy-focused note-taking app"
  homepage "https://beavernotes.com/"

  depends_on macos: ">= :big_sur"

  app "Beaver-notes.app"

  zap trash: [
    "~/Library/Caches/com.danielerolli.beaver-notes",
    "~/Library/Preferences/com.danielerolli.beaver-notes.plist",
    "~/Library/Saved Application State/com.danielerolli.beaver-notes.savedState",
  ]
end

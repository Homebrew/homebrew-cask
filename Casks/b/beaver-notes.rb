cask "beaver-notes" do
  version "4.1.0"
  sha256 "b8198b4185c1854acb09cae8e7e29f2a9925a9ee1d1aa6a0b8281d7664b15e94"

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

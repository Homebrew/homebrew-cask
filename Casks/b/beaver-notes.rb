cask "beaver-notes" do
  version "3.7.0"
  sha256 "a4cd9fa4db758507747c32b55c2cc8908ddd0d2e6729033fb5cc7105642e6929"

  url "https://github.com/Beaver-Notes/Beaver-Notes/releases/download/#{version}/Beaver-notes.dmg"
  name "Beaver Notes"
  desc "Your personal note-taking haven for privacy and efficiency"
  homepage "https://beavernotes.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Beaver-Notes.app"

  zap trash: [
    "~/Library/Preferences/com.danielerolli.beaver-notes.plist",
    "~/Library/Caches/com.danielerolli.beaver-notes",
    "~/Library/Saved Application State/com.danielerolli.beaver-notes.savedState",
  ]
end

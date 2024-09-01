cask "notes-better" do
  version "2.3.0"
  sha256 "f9525c711ecadfccb5f2a90f4ffa51ff2fa918e69ee01991dc4b00b50e8ab32d"

  url "https://github.com/nuttyartist/notes/releases/download/v#{version}/Notes.#{version}.dmg",
      verified: "github.com/nuttyartist/notes/"
  name "Notes"
  desc "Simple note-taking app for markdown and kanban"
  homepage "https://get-notes.com/"

  depends_on macos: ">= :catalina"

  app "Notes Better.app"

  zap trash: [
    "~/Library/Caches/Notes",
    "~/Library/Preferences/io.github.nuttyartist.notes.plist",
    "~/Library/Saved Application State/io.github.nuttyartist.notes.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

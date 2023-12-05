cask "notes-better" do
  version "2.2.1"
  sha256 "8148f8239abc5352e8abc9adac181f109994c616ff652d505e93b341c94138aa"

  url "https://github.com/nuttyartist/notes/releases/download/v#{version}/Notes.#{version}.dmg",
      verified: "github.com/nuttyartist/notes/"
  name "Notes"
  desc "Simple note-taking app for markdown and kanban"
  homepage "https://get-notes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Notes Better.app"

  zap trash: [
    "~/Library/Saved Application State/io.github.nuttyartist.notes.savedState",
    "~/Library/Preferences/io.github.nuttyartist.notes.plist",
    "~/Library/Caches/Notes",
  ]
end

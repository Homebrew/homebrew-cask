cask "joltnotes-lite" do
  version "1.0.0"
  sha256 "9dba50767ef4fc2137ed118db33526ef93ad6ea5de1e866e172d8bef251ada2d"

  url "https://github.com/Mineman130Dev/Notes-App-JoltNotes/releases/download/v1.0/JoltNotesLite.zip"
  name "JoltNotes Lite"
  desc "Simple and lightweight note-taking application"
  homepage "https://github.com/Mineman130Dev/Notes-App-JoltNotes"

  app "JoltNotesLite.app"

  zap trash: [
    "~/Library/Application Support/JoltNotesLite",
    "~/Library/Preferences/com.mineman130.joltnoteslite.plist", # Ensure this is correct
  ]
end

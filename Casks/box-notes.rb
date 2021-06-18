cask "box-notes" do
  version "1.4.0"
  sha256 :no_check

  url "https://e3.boxcdn.net/box-installers/boxnotes/mac/latest/Box%20Notes.zip",
      verified: "e3.boxcdn.net/box-installers/"
  appcast "https://notes.services.box.com/updates/latest?platform=darwin&v=#{version.major}.0.0"
  name "Box Notes"
  homepage "https://www.box.com/resources/downloads/notes"

  app "Box Notes.app"

  zap trash: [
    "~/Library/Application Support/Box Notes",
    "~/Library/Preferences/com.box.box-notes.helper.plist",
    "~/Library/Preferences/com.box.box-notes.plist",
  ]
end

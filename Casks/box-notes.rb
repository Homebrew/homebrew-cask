cask "box-notes" do
  version "1.4.0"
  sha256 "aa383ad7665b9c0e5975f6440c109a5f18573fc138c3d934a7d903126071459d"

  # e3.boxcdn.net/box-installers/ was verified as official when first introduced to the cask
  url "https://e3.boxcdn.net/box-installers/boxnotes/mac/latest/Box%20Notes.zip"
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

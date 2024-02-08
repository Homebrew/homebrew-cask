cask "box-notes" do
  version "1.4.0"
  sha256 :no_check

  url "https://e3.boxcdn.net/box-installers/boxnotes/mac/latest/Box%20Notes.zip",
      verified: "e3.boxcdn.net/box-installers/"
  name "Box Notes"
  desc "Online notes for secure, real-time collaboration"
  homepage "https://www.box.com/resources/downloads/notes"

  # https://support.box.com/hc/en-us/articles/5504613283859-Box-Notes-Desktop-app-EOL-on-June-15-2022
  deprecate! date: "2024-01-24", because: :discontinued

  app "Box Notes.app"

  zap trash: [
    "~/Library/Application Support/Box Notes",
    "~/Library/Preferences/com.box.box-notes.helper.plist",
    "~/Library/Preferences/com.box.box-notes.plist",
  ]
end

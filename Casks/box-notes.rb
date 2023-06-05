cask "box-notes" do
  version "1.4.0"
  sha256 :no_check

  url "https://e3.boxcdn.net/box-installers/boxnotes/mac/latest/Box%20Notes.zip",
      verified: "e3.boxcdn.net/box-installers/"
  name "Box Notes"
  desc "Online notes for secure, real-time collaboration"
  homepage "https://www.box.com/resources/downloads/notes"

  livecheck do
    url "https://notes.services.box.com/updates/latest?platform=darwin&v=#{version.major}.0.0"
    strategy :json do |json|
      json["version"]
    end
  end

  app "Box Notes.app"

  zap trash: [
    "~/Library/Application Support/Box Notes",
    "~/Library/Preferences/com.box.box-notes.helper.plist",
    "~/Library/Preferences/com.box.box-notes.plist",
  ]
end

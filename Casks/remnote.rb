cask "remnote" do
  version "1.8.10"
  sha256 "09ffeb8cc1b70370ee4ed740760d220fd22fb6ec3d187f045ee9f2952ea36148"

  url "https://download.remnote.io/RemNote-#{version}.dmg",
      verified: "remnote.io"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://s3.amazonaws.com/download.remnote.io/latest-mac.yml"
    strategy :electron_builder
  end

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end

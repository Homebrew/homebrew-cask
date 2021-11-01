cask "remnote" do
  version "1.4.10"
  sha256 "6490b25fece4454c3242c2dbce98c634a9f3a1a8cc46b84be9007de10300f867"

  url "https://download.remnote.io/RemNote-#{version}.dmg"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.io/"

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

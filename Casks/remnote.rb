cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.29"
  sha256 arm:   "b3e1cce4f5e54beab56d0e19f28d08c3aa1635509eac5e22771a01414e14d528",
         intel: "9a1352dd2abeecb4a4ab08f8002bc667b2c52e8d94fede3bcd5662712dbacca2"

  url "https://download.remnote.io/RemNote-#{version}#{arch}.dmg",
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

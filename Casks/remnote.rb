cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.48"
  sha256 arm:   "a57f22c14fd5f852076867976447b17b9bb98ccfe7323b7429ccf174b570a06a",
         intel: "36ee64f2936f59ad71df1310f7ed2e3ff1fb8bc88d1832c8043184ff0c370711"

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

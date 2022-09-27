cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.35"
  sha256 arm:   "3f842b647d77556a152485419674623acc899cb1603a209411d728c770e8397f",
         intel: "19dfc069688f4299dc6bf951ebbcac152079b6126121d5dbc1fd2a309d91b878"

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

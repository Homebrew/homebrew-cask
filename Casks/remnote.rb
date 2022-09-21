cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.30"
  sha256 arm:   "1724f60e36204d4ee0910931a1c828fd8313a8082baaabde606396a8074e6461",
         intel: "f9140737a405399d3c6e0a135d5c4c877aa4a9d11a09818133e0f6e03e675ef0"

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

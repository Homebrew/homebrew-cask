cask "remnote" do
  arch arm: "-arm64", intel: ""

  version "1.8.26"
  sha256 arm:   "e4c85343848238be7ecf706d053e01c8f42e0f61760dd2f1bb0529781771c471",
         intel: "1279d249a7f8c66fe1f7d1450aabd1ceb10b4c30aacfb7084e136faf59f56ecf"

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

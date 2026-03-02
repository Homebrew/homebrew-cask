cask "remnote" do
  arch arm: "-arm64"

  version "1.23.10"
  sha256 arm:   "c8c6e380fc863ebe7ddce7351c5be4df2cb0c48110a295f2e6a78864a3677431",
         intel: "509f4caf4205a5b817f531a05bf2c1b713ed15e877774eeabc926b1a05ca0d69"

  url "https://download2.remnote.io/remnote-desktop2/RemNote-#{version}#{arch}-mac.zip",
      verified: "download2.remnote.io/"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://download2.remnote.io/remnote-desktop2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end

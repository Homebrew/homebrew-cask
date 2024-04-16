cask "remnote" do
  arch arm: "-arm64"

  version "1.15.17"
  sha256 arm:   "00d3f71dd1d9a8062eb504bc144d76387deef4e08b66c53db4f540783f1fdf00",
         intel: "06669b18444ef57123ae938ef0ba279f61a72bbb284f6a211729696fa942554f"

  url "https://download.remnote.io/remnote-desktop/RemNote-#{version}#{arch}-mac.zip",
      verified: "download.remnote.io/"
  name "RemNote"
  desc "Spaced-repetition powered note-taking tool"
  homepage "https://www.remnote.com/"

  livecheck do
    url "https://download.remnote.io/remnote-desktop/latest-mac.yml"
    strategy :electron_builder
  end

  app "RemNote.app"

  zap trash: [
    "~/Library/Application Support/RemNote",
    "~/Library/Preferences/io.remnote.plist",
    "~/Library/Saved Application State/io.remnote.savedState",
  ]
end

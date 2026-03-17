cask "remnote" do
  arch arm: "-arm64"

  version "1.24.5"
  sha256 arm:   "85412f225e4b6f38bc245b279262b0af044e2b2e3e133f2fd510a78835ae5d8a",
         intel: "bc479fac33554d9f514a513b4f19d9ea77c56e34cfe2ab03bd77da37ac92ac38"

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

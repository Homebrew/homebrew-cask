cask "clipbook" do
  arch arm: "arm64", intel: "x64"

  version "1.28.1"
  sha256 arm:   "493edcae7ca6771c63447f93f9c04abc689f669007728a657045d7915ba7f31e",
         intel: "083f42f45f6461a111d0f603ee15ce62f92d28db6190707c0b76c6dfa98bcf9e"

  url "https://f005.backblazeb2.com/file/clipbook/ClipBook-#{version}-#{arch}.dmg",
      verified: "f005.backblazeb2.com/file/clipbook/"
  name "ClipBook"
  desc "Clipboard history app"
  homepage "https://clipbook.app/"

  livecheck do
    url "https://clipbook.app/downloads/mac/#{arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "ClipBook.app"

  zap trash: [
    "~/Library/Application Support/ClipBook",
    "~/Library/Caches/ClipBook",
    "~/Library/HTTPStorages/com.ikryanov.clipbook",
    "~/Library/Preferences/com.ikryanov.clipbook.plist",
    "~/Library/Saved Application State/com.ikryanov.clipbook.savedState",
  ]
end

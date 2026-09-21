cask "clipbook" do
  version "2.1.7"
  sha256 "90d300d19220f3c0739eca72c2611b2a565b49181d384b638591a8a2bc002e1f"

  url "https://f005.backblazeb2.com/file/clipbook/ClipBook-#{version}.dmg"
  name "ClipBook"
  desc "Clipboard history app"
  homepage "https://clipbook.app/"

  livecheck do
    url "https://clipbook.app/downloads/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "ClipBook.app"

  zap trash: [
    "~/Library/Application Support/ClipBook",
    "~/Library/Application Support/ClipBook2",
    "~/Library/Caches/ClipBook",
    "~/Library/Caches/ClipBook2",
    "~/Library/HTTPStorages/com.ikryanov.clipbook",
    "~/Library/HTTPStorages/com.ikryanov.clipbook.v2",
    "~/Library/Preferences/com.ikryanov.clipbook.plist",
    "~/Library/Preferences/com.ikryanov.clipbook.v2.plist",
    "~/Library/Saved Application State/com.ikryanov.clipbook.savedState",
    "~/Library/Saved Application State/com.ikryanov.clipbook.v2.savedState",
  ]
end

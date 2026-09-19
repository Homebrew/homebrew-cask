cask "clipbook" do
  version "2.1.7"
  sha256 "90d300d19220f3c0739eca72c2611b2a565b49181d384b638591a8a2bc002e1f"

  url "https://f005.backblazeb2.com/file/clipbook/ClipBook-#{version}.dmg"
  name "ClipBook"
  desc "Clipboard history app for Mac"
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

  caveats <<~EOS
    ClipBook 2 does not migrate clipboard history from version 1 automatically.

    If you are upgrading from ClipBook 1, export your history from ClipBook 1
    first, then import it into ClipBook 2. Your ClipBook 1 history remains on
    disk at ~/Library/Application Support/ClipBook.

    See https://clipbook.app/guides/how-to-migrate-to-clipbook-2/
  EOS
end

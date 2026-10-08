cask "clipbook" do
  version "2.3.2"
  sha256 "775330fc8d0c02348cb924cde0d99c7797ceb047c4044bc2fa611fdbb44d17be"

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
    "~/Library/Application Support/ClipBook*",
    "~/Library/Caches/ClipBook*",
    "~/Library/HTTPStorages/com.ikryanov.clipbook*",
    "~/Library/Preferences/com.ikryanov.clipbook*.plist",
    "~/Library/Saved Application State/com.ikryanov.clipbook*.savedState",
  ]
end

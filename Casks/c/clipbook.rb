cask "clipbook" do
  version "2.4.0"
  sha256 "a9926438cb6a9641eafdb700ba0671453386ba94ae59c280ea41ead762e7b63c"

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

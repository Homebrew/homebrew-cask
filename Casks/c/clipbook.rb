cask "clipbook" do
  version "2.3.3"
  sha256 "6494aa7d3b30f98c2d4cc8aec6a324f3545eee47f36866b80461a7db109a3f9e"

  url "https://pub-7a3325a76558410385d3c0d479c0b1b4.r2.dev/ClipBook-#{version}.dmg"
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

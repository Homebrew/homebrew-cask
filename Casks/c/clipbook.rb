cask "clipbook" do
  version "2.7.0"
  sha256 "e19537bed121461656f1a940d164473dd000f80ae60f222393062e42c783177b"

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
    "~/Library/Caches/com.ikryanov.clipbook*",
    "~/Library/HTTPStorages/com.ikryanov.clipbook*",
    "~/Library/Preferences/com.ikryanov.clipbook*.plist",
    "~/Library/Saved Application State/com.ikryanov.clipbook*.savedState",
  ]
end

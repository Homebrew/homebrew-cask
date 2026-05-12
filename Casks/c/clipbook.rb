cask "clipbook" do
  arch arm: "arm64", intel: "x64"

  version "1.35.0"
  sha256 arm:   "31de4c4cd1a1a2f6e79fbb04f2ef6d6e8df172d3a2c251a2960d2b9720e6f580",
         intel: "59aacc906d86151cc916c8fb0bd2ef176c150aa874128d56e9ca31eec4678479"

  url "https://f005.backblazeb2.com/file/clipbook/ClipBook-#{version}-#{arch}.dmg",
      verified: "f005.backblazeb2.com/file/clipbook/"
  name "ClipBook"
  desc "Clipboard history app"
  homepage "https://clipbook.app/"

  livecheck do
    url "https://clipbook.app/downloads/mac/#{arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :monterey

  app "ClipBook.app"

  zap trash: [
    "~/Library/Application Support/ClipBook",
    "~/Library/Caches/ClipBook",
    "~/Library/HTTPStorages/com.ikryanov.clipbook",
    "~/Library/Preferences/com.ikryanov.clipbook.plist",
    "~/Library/Saved Application State/com.ikryanov.clipbook.savedState",
  ]
end

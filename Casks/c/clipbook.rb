cask "clipbook" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "b0f3fce73aff5a44901b65387746686e1abc030ddd5af5527c0d4f9d6aefe718",
         intel: "94044a62042e3525988a0bd8495c84b1f7ed24322b10d723eb9f3b81aa8d61a7"

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

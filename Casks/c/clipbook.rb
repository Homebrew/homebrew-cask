cask "clipbook" do
  arch arm: "arm64", intel: "x64"

  version "1.20.1"
  sha256 arm:   "7ceea1557ca91e2ef77d3c9289e8f35b63a61722dd4fc417eb5f3537047feffb",
         intel: "38b6885e6d67292e9328c974f193ce5bd97c508347386129e29b7654612c2103"

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

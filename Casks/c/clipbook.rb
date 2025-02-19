cask "clipbook" do
  arch arm: "arm64", intel: "x64"

  version "1.19.0"
  sha256 arm:   "68a686f2efbeece9431199eadcd9af9ff107b721e897539a39f5a0fda2a2becc",
         intel: "0bcfce26fd4f9d25f0eb3e22c0a3e9d2eb2ebd9f008a2a90bf4497b005dcad07"

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

cask "swift" do
  version "4.0.2"
  sha256 "7fc8ed6911f91f0888b4b9ec3c26df41325cb4d8c2fc588fbacd35a0be7f772b"

  url "https://swift.im/downloads/releases/swift-#{version}/Swift-#{version}.dmg"
  name "Swift"
  desc "XMPP client"
  homepage "https://swift.im/"

  livecheck do
    url "https://swift.im/downloads/swift-stable-appcast-mac.xml"
    strategy :sparkle, &:version
  end

  app "Swift.app"

  zap trash: [
    "~/Library/Application Support/Swift",
    "~/Library/Caches/im.swift.Swift",
    "~/Library/Preferences/im.swift.Swift.plist",
    "~/Library/Saved Application State/im.swift.Swift.savedState",
  ]
end

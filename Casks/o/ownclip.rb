cask "ownclip" do
  version "1.8.0"
  sha256 "5cda5943f9e79e79e6d6bb4aa9b3f419d820a11e6efa96a62e83b68d8343aba0"

  url "https://ownclip.io/download/OwnClip-#{version}-arm64.dmg"
  name "OwnClip"
  desc "Screen recorder, screenshot tool and video editor"
  homepage "https://ownclip.io/"

  livecheck do
    url "https://github.com/thealanby/ownclip-releases/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "OwnClip.app"

  uninstall quit: "com.ownclip.macos"

  zap trash: [
    "~/Library/Application Support/OwnClip",
    "~/Library/Caches/com.ownclip.macos",
    "~/Library/Caches/OwnClip",
    "~/Library/HTTPStorages/com.ownclip.macos",
    "~/Library/HTTPStorages/com.ownclip.macos.binarycookies",
    "~/Library/Preferences/com.ownclip.macos.plist",
    "~/Library/WebKit/com.ownclip.macos",
  ]
end

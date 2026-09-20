cask "ownclip" do
  version "1.8.1"
  sha256 "f31d3416811029774e207a768613b8391799f91082490a8b2cc9987d59b19f26"

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

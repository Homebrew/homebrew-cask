cask "bitmuse" do
  version "1.4.0"
  sha256 "b8c070563438d6a57e27a5b89b72f53259d42498eb9fa1239941d5b22b62f1ea"

  url "https://updates.bitmuse.app/BitMuse-#{version}.dmg"
  name "BitMuse"
  desc "Bit-perfect music player for local hi-res libraries"
  homepage "https://bitmuse.app/"

  livecheck do
    url "https://updates.bitmuse.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "BitMuse.app"

  uninstall quit: "com.bitmuse.app"

  zap trash: [
    "~/Library/Application Scripts/com.bitmuse.app",
    "~/Library/Application Support/BitMuse",
    "~/Library/Caches/BitMuse",
    "~/Library/Caches/com.bitmuse.app",
    "~/Library/Containers/com.bitmuse.app",
    "~/Library/HTTPStorages/com.bitmuse.app",
    "~/Library/Preferences/com.bitmuse.app.plist",
    "~/Library/WebKit/com.bitmuse.app",
  ]
end

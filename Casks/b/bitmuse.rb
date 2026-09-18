cask "bitmuse" do
  version "1.3.37"
  sha256 "c7459fceedd3b4616fff3bbc62c0f684023659695dcb57e0b02a38b7942cf1ac"

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

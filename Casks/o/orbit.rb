cask "orbit" do
  version "1.0.7"
  sha256 "3f0e6167d4f26edfa868c3a205d5d4523f7cd3bc9dce0c1bfde7dda27dd13612"

  url "https://orbitformac.com/downloads/Orbit-#{version}.dmg"
  name "Orbit for Mac"
  desc "Multiple Google accounts in isolated sessions in one window"
  homepage "https://orbitformac.com/"

  livecheck do
    url "https://orbitformac.com/appcast-v1.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Orbit.app"

  zap trash: [
    "~/Library/Application Support/Orbit",
    "~/Library/Caches/com.dearnode.orbit",
    "~/Library/HTTPStorages/com.dearnode.orbit",
    "~/Library/Preferences/com.dearnode.orbit.plist",
    "~/Library/Saved Application State/com.dearnode.orbit.savedState",
    "~/Library/WebKit/com.dearnode.orbit",
  ]
end

cask "orbit" do
  version "1.1.0"
  sha256 "9c30971861f20fd35eef684dcd8afc185e4ea26e7483e410234f80a302fea8f8"

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

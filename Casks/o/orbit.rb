cask "orbit" do
  version "1.1.10"
  sha256 :no_check # required as upstream 302 redirects outdated versions to the latest

  url "https://orbitformac.com/downloads/Orbit-#{version}.dmg"
  name "Orbit for Mac"
  desc "Multiple Google accounts in isolated sessions in one window"
  homepage "https://orbitformac.com/"

  livecheck do
    url "https://orbitformac.com/appcast-v#{version.major}.xml"
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

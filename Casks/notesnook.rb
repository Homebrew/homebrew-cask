cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "6558b4b792e6994887aeb0f9f279652d31ab49320921c34d608cc29076151a8a",
         intel: "9db1361b57767e96c14bbe7a4f76f82f4df13fc265091e44cfa15500d58d1cad"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end

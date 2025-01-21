cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.24"
  sha256 arm:   "2ee056e1c5b0a02ae0053ce2ba99bcda49e692dc1f61c1c3bc1a8d9224ec474a",
         intel: "67d0e70b938217b14743bb2d9e0d063e9de06bf6ef0bb8d52901fd9a0a61d76b"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/api/v1/releases/darwin/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end

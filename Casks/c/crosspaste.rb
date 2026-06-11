cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"

  version "2.1.5.2343"
  sha256 arm:   "a274fd1742dd82208811b14b7365a512c68340c14e56394d1ab0bdde3972b2d0",
         intel: "666addc5077e22fcfc89487d68c1c779363ef232814827d8da91a4a84ec07be5"

  url "https://github.com/CrossPaste/crosspaste-desktop/releases/download/#{version}/crosspaste-#{version.major_minor_patch}-#{version.split(".").last}-mac-#{arch}.zip",
      verified: "github.com/CrossPaste/crosspaste-desktop/"
  name "CrossPaste"
  desc "Universal Pasteboard Across Devices"
  homepage "https://crosspaste.com/en/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "CrossPaste.app"

  zap trash: [
    "~/Library/Application Support/CrossPaste",
    "~/Library/HTTPStorages/com.crosspaste.mac",
    "~/Library/HTTPStorages/com.crosspaste.mac.binarycookies",
    "~/Library/LaunchAgents/com.crosspaste.mac.plist",
    "~/Library/Preferences/com.crosspaste.mac.plist",
  ]
end

cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"

  version "2.1.6.2390"
  sha256 arm:   "a5a31634e54b9e009c86ce3a2bcd5da3a2c36b8ec6b04ea4b0229115bc1f30e8",
         intel: "d7115466493bdd6dfebc37624676e93279941a42f9635737ce6cff5f2625efa4"

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

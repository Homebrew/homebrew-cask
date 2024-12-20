cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"

  version "1.1.0.1184"
  sha256 arm:   "ff5326676af75b224dc6a29a2ed1b9c86156a72ea1086fd14725c7e0e932818a",
         intel: "810dfc25471a48b8c20fe305415b67003081e7bd353a36d46deed4077bf35e74"

  url "https://github.com/CrossPaste/crosspaste-desktop/releases/download/#{version}/crosspaste-#{version.major_minor_patch}-#{version.split(".").last}-mac-#{arch}.zip",
      verified: "github.com/CrossPaste/crosspaste-desktop/"
  name "crosspaste"
  desc "Universal Pasteboard Across Devices"
  homepage "https://crosspaste.com/en/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "CrossPaste.app"

  zap trash: [
    "~/Library/Application Support/CrossPaste",
    "~/Library/HTTPStorages/com.crosspaste.mac",
    "~/Library/HTTPStorages/com.crosspaste.mac.binarycookies",
    "~/Library/LaunchAgents/com.crosspaste.mac.plist",
    "~/Library/Preferences/com.crosspaste.mac.plist",
  ]
end

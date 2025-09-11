cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"

  version "1.2.2.1640"
  sha256 arm:   "35209fcf6c40ae0c29311c308d1c96fae61e1b60c8caf7cd3b9a4c479571fa40",
         intel: "2395ac53ec10ba0352559166579e7c30bf6324fdb87ead5c58cf68a430850a9f"

  url "https://github.com/CrossPaste/crosspaste-desktop/releases/download/#{version}/crosspaste-#{version.major_minor_patch}-#{version.split(".").last}-mac-#{arch}.zip",
      verified: "github.com/CrossPaste/crosspaste-desktop/"
  name "CrossPaste"
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

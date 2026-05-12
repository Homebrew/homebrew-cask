cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"

  version "2.0.0.2192"
  sha256 arm:   "ba64ced51475dfbb9b28d7ca065ec2ad7cecd1e6c87e5c03983c97f1136e918f",
         intel: "e0c768f81541bf0e1dc923fadf71b5e6d16ccde2943bb7f1b28a04b278c24faa"

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

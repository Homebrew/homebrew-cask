cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"

  version "2.1.7.2461"
  sha256 arm:   "6b2f5af679370eb0ec2f64cabbf350297a930efd0c276409e10417381c3b4d71",
         intel: "e4ae5b70c6254704a69294811ae00bf81c2bece9e96609780518b9dd8baf8d3d"

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

  uninstall launchctl: "com.crosspaste.mac"

  zap trash: [
    "~/Library/Application Support/CrossPaste",
    "~/Library/HTTPStorages/com.crosspaste.mac",
    "~/Library/HTTPStorages/com.crosspaste.mac.binarycookies",
    "~/Library/LaunchAgents/com.crosspaste.mac.plist",
    "~/Library/Preferences/com.crosspaste.mac.plist",
  ]
end

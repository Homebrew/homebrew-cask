cask "roblox" do
  arch arm: "arm64/"

  version "0.735.0.7351131,31dba3b2537245ce"
  sha256 arm:   "fc2260ae2110a18976ad55b3a73f1297827e1bd69d9967f28ddcb3ee8b43eec2",
         intel: "143ef6a6b9caa9c36266c5c791922538f174cd7c582a84589f3c816610a0f34e"

  url "https://setup.rbxcdn.com/mac/#{arch}version-#{version.csv.second}-RobloxPlayer.zip",
      verified: "setup.rbxcdn.com/"
  name "Roblox"
  desc "Online multiplayer game platform"
  homepage "https://www.roblox.com/"

  livecheck do
    url "https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer"
    strategy :json do |json|
      version = json["version"]
      client_version = json["clientVersionUpload"]&.split("-")&.second
      next if version.blank? || client_version.blank?

      "#{version},#{client_version}"
    end
  end

  auto_updates true
  depends_on :macos

  # The default installer installs the application as `Roblox.app` - so do the same for consistency
  app "RobloxPlayer.app", target: "Roblox.app"

  uninstall quit: [
    "com.roblox.RobloxPlayer",
    "com.roblox.RobloxPlayer.MenuBar",
  ]

  zap trash: [
    "~/Library/HTTPStorages/com.roblox.RobloxPlayer.binarycookies",
    "~/Library/Logs/Roblox",
    "~/Library/Preferences/com.Roblox.Roblox.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayer.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayerChannel.plist",
    "~/Library/Roblox",
  ]
end

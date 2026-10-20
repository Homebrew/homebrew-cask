cask "roblox" do
  arch arm: "arm64/"

  version "0.744.0.7441080,546c6da637854de3"
  sha256 arm:   "18ccf1e10390fc8273fe6dfaf4c44216926f3acb41172711e76635555ef091bb",
         intel: "af5774938f20169d29bb62adcd6f43c58701bdaeda41f49d00aa3293d95c7ee1"

  url "https://setup.rbxcdn.com/mac/#{arch}version-#{version.csv.second}-RobloxPlayer.zip"
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

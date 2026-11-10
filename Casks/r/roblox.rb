cask "roblox" do
  arch arm: "arm64/"

  version "0.747.0.7471481,8001f8762ae44efe"
  sha256 arm:   "bc77482115e8d09cb201d2858cc02e390b66af5259eb607bf205e25662b20ab5",
         intel: "b749262f84ce23bec59fc4bc1e818881ff2482efea6191f4cd91e8c9d250211a"

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

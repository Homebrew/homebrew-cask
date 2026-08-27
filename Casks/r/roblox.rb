cask "roblox" do
  arch arm: "arm64/"

  version "0.736.0.7361346,4c4fc877ca9b4c61"
  sha256 arm:   "c676c975ddfd0a49b845baa82cd16a0fa8063c9bcd9b57967ab8b6543af4b23e",
         intel: "053544b8534159c557a910b76b6bb9202e6a9c108829284713e24687cf0df4e7"

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

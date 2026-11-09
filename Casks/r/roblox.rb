cask "roblox" do
  arch arm: "arm64/"

  version "0.746.0.7461264,2fc79d515be6449d"
  sha256 arm:   "80a78b977543d254d04eb59840d2b0409c73e10aac5b6b08ff9eec31e9e78abe",
         intel: "9e546fcc1ecd427ca9e3614faa43f60f5a1a55b61e5945ef8744e0a7a185782d"

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

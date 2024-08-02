cask "roblox" do
  arch arm: "arm64/"

  version "0.636.1.6360627,0e4f9b5c84614d79"
  sha256 arm:   "331be3df8b7120c4a0524e3c43c6ed7483213b67e850b06949eb8062b65f56a7",
         intel: "2bde2db820d066360f9aa922527735cbc4102a281770d1b6343e40a50d1511ba"

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
  depends_on macos: ">= :high_sierra"

  # The default installer installs the application as `Roblox.app` - so do the same for consistency
  app "RobloxPlayer.app", target: "Roblox.app"

  uninstall quit:   "com.roblox.RobloxPlayer",
            delete: "/Applications/Roblox.app"

  zap trash: [
    "~/Library/Preferences/com.Roblox.Roblox.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayer.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayerChannel.plist",
  ]
end

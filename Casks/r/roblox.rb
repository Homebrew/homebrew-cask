cask "roblox" do
  arch arm: "arm64/"

  version "0.653.0.6530693,d701c5c2ffa34e14"
  sha256 arm:   "1d4e9b9360f83a1baca5cfadbcf169f7c96c3438e39d99eda52eb34397d295a3",
         intel: "a18f0713d915bb395abc5cf7b3a3c52a3e0fea05cef56925c5b6e67dcec97e0a"

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

  uninstall quit: "com.roblox.RobloxPlayer"

  zap trash: [
    "~/Library/Preferences/com.Roblox.Roblox.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayer.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayerChannel.plist",
  ]
end

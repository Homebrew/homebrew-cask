cask "roblox" do
  arch arm: "arm64/"

  version "0.638.1.6380615,9a42bf606f9f44c2"
  sha256 arm:   "9950eca4aa1d8e9e94612845bd302730e28700ca33275ea6444a42b101b76ab8",
         intel: "cd25586ef23ba7d915e0fa5766f12aad980070c69aa90f651ed3824f4079bc29"

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

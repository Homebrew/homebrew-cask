cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.726.0.7261140,b6aafcb5ea434992"
  sha256 arm:   "4d4083e99179f85a1e3258a991002b4e52af7e633a8474c2d1b86fec27cceab7",
         intel: "806969fba69107aec3d30d29739c9ec172a75797f814121a002c15a311b8cc25"

  url "https://setup.rbxcdn.com/mac/#{arch}version-#{version.csv.second}-RobloxStudioApp.zip",
      verified: "setup.rbxcdn.com/"
  name "Roblox Studio"
  desc "Roblox IDE to build your experiences"
  homepage "https://create.roblox.com/"

  livecheck do
    url "https://clientsettingscdn.roblox.com/v1/client-version/MacStudio"
    strategy :json do |json|
      version = json["version"]
      client_version = json["clientVersionUpload"]&.split("-")&.second
      next if version.blank? || client_version.blank?

      "#{version},#{client_version}"
    end
  end

  auto_updates true
  depends_on :macos

  app "RobloxStudio.app"

  uninstall quit: "com.roblox.RobloxStudio"

  zap trash: [
    "~/Library/Preferences/com.roblox.RobloxStudio.plist",
    "~/Library/Preferences/com.roblox.RobloxStudioChannel.plist",
  ]
end

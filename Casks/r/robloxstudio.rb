cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.711.0.7110875,dbbcb4f2339c4413"
  sha256 arm:   "b6a5ef7c6289de768bd8830f43bd7f3748163a46658b6c736e648c96ebf7a5d7",
         intel: "85dd4b2775a663ca8cc44f774585360a1f97f5cf5ee3502f09f573a40eda0cfa"

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

  app "RobloxStudio.app"

  uninstall quit: "com.roblox.RobloxStudio"

  zap trash: [
    "~/Library/Preferences/com.roblox.RobloxStudio.plist",
    "~/Library/Preferences/com.roblox.RobloxStudioChannel.plist",
  ]
end

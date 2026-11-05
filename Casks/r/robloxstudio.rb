cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.746.0.7461269,a5095c71e1ed4630"
  sha256 arm:   "355dd68633286bae0eac08a3d0e3e8ccc54c5e8ed2d17862638185cd17519dd2",
         intel: "8f85e230fa415dac0db285ffa131b3395f89dd8be6b37947a0790564d7b279f3"

  url "https://setup.rbxcdn.com/mac/#{arch}version-#{version.csv.second}-RobloxStudioApp.zip"
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

  uninstall quit: "com.Roblox.RobloxStudio"

  zap trash: [
    "~/Library/Caches/com.Roblox.RobloxStudio",
    "~/Library/HTTPStorages/com.Roblox.RobloxStudio.binarycookies",
    "~/Library/Preferences/com.roblox.RobloxStudio.plist",
    "~/Library/Preferences/com.roblox.RobloxStudioChannel.plist",
    "~/Library/WebKit/com.Roblox.RobloxStudio",
  ]
end

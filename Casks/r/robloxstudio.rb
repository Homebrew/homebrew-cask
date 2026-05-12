cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.720.0.7201168,79d5963174c0404f"
  sha256 arm:   "1b3ce89dabf46a17f142f384015839797a6f1106464a994fb91b29e1d1ce9662",
         intel: "ee9355f10229058f9473651e1327c0e5a874f1dcf6170070ac89adea17b13cdf"

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

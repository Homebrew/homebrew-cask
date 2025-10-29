cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.697.0.6970925,308b7768a2844ad8"
  sha256 arm:   "313c285301d5188cd40bff94e00a074476fe3fb8f89d609c31a0e328d8e6fdb7",
         intel: "19e52840e12fc3f3fd07691285b75dae9b2298f6e4ae7089b08b4b0cd105be9f"

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

  uninstall quit:   "com.roblox.RobloxStudio",
            delete: "/Applications/RobloxStudio.app"

  zap trash: [
    "~/Library/Preferences/com.roblox.RobloxStudio.plist",
    "~/Library/Preferences/com.roblox.RobloxStudioChannel.plist",
  ]
end

cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.707.0.7070732,5fd3ee09812d4e3c"
  sha256 arm:   "292fb4a569884aa1be1a3cbf6e4839a9a56e5a6b5cb82df7d631ed0f902ff8f6",
         intel: "278289573fe96e83cff311b6ea1f76e4fc2b1dcf2eb99b80dd19293e82b8f035"

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

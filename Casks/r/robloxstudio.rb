cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.670.0.6700713,9f0a718f4ceb4b7c"
  sha256 arm:   "0f315d6a31250f14f9e8727c2cc0680cf85722f0a4d8720a9960727daf1f099a",
         intel: "c10003e937cc711184d1c012a5c351c47a282b90ef2c948e1bc0edf6af61df3c"

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
  depends_on macos: ">= :high_sierra"

  app "RobloxStudio.app"

  uninstall quit:   "com.roblox.RobloxStudio",
            delete: "/Applications/RobloxStudio.app"

  zap trash: [
    "~/Library/Preferences/com.roblox.RobloxStudio.plist",
    "~/Library/Preferences/com.roblox.RobloxStudioChannel.plist",
  ]
end

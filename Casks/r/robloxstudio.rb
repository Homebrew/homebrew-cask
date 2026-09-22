cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.740.0.7400927,34ad3b6d314e4ca7"
  sha256 arm:   "1015551b6496e1af6aa47dd32ca818ec73d0da15fd45019e4a5a58368d705768",
         intel: "c247a0f58ac8bf7844068faf17310cd64948b1cfe280b5c460e61db2ecb7546c"

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
    "~/Library/Preferences/com.roblox.RobloxStudio.plist",
    "~/Library/Preferences/com.roblox.RobloxStudioChannel.plist",
  ]
end

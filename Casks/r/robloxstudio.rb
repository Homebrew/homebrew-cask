cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.748.0.7481526,c5c97d45b6614310"
  sha256 arm:   "a0c3c813788823820c43c9dafb0a464d4c9c5df2f5e9b84bea231e5fae435529",
         intel: "832403bd9d52c830689ac737b26c89f9ed563b4e72dcace338220c997ceac575"

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

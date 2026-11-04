cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.746.0.7461264,5edfb1649d55462d"
  sha256 arm:   "af1a61285f1885e6f044cb1b6d880d6c493ffcdc0d881d364dc97054cc39fc58",
         intel: "d925109617d69ac4f1ff4b9e4c4f6d3c1897bb2e2b404e06204c3fb4b00030f2"

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

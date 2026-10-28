cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.745.0.7451137,a7baca1cb08a4943"
  sha256 arm:   "18475cebe37bb7f4f910180698b9c3daf615aa7a91ba0c7b9c7ac8384e65aa78",
         intel: "c478f16f63572358492357dea2547fd9c4bf9a0314788f352ca8360d0945d76a"

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

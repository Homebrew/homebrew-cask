cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.747.0.7471481,5b06061c96124bdc"
  sha256 arm:   "8f68525e00c31d968732a06dd583988b74e5aab0149feae222c12499d7ea62cb",
         intel: "98d173144a3bcad4dc216ec73c81dbb5b2501636ece54b90050017efbc31af7e"

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

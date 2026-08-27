cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.736.0.7361346,e1e3a8137d8040ef"
  sha256 arm:   "c43c67711ea77d67a8ce5950ce8d08ec7bc49900a4788b89336bceda5a0dbbe3",
         intel: "c3ec7186d45eaa5ad2c75cc0f87d3207c5ca04911dbf1f4fc913654fc7184c63"

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

  uninstall quit: "com.Roblox.RobloxStudio"

  zap trash: [
    "~/Library/Preferences/com.roblox.RobloxStudio.plist",
    "~/Library/Preferences/com.roblox.RobloxStudioChannel.plist",
  ]
end

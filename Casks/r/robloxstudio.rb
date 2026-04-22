cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.718.0.7181104,5abec595a20a48a9"
  sha256 arm:   "2f49e1f7f9997a0da70169714aa0db3f5fba22abe8bbdf6fd27fb180db7e3f58",
         intel: "196d58f3bf84d49fe79c950ed670ca6ad34ccb04f4e2af7089b62a7f3f00a18d"

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

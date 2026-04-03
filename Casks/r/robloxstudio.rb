cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.715.0.7151115,af87dd9eb0504328"
  sha256 arm:   "68524a7034113ddfde301156cefedfb275edac5f8e3a78a778c59bf7e2ee2452",
         intel: "902c19c17e05bf1c2d33aea4621e09d65ba5893dea792717b79658c4e2f47f1d"

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

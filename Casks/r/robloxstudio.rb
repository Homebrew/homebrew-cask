cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.638.1.6380615,2eafde940e70496f"
  sha256 arm:   "dc50921856c235d6eb679bd138ef79a819206359efb0a095b2487dd0ee4f9a11",
         intel: "4ded78f9662c2fe294cbaeb15001cbcbf0999f83a2d8aaa02e87a0bd84c0e0b1"

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

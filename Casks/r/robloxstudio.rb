cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.662.0.6620538,3bfa2dd97cc044d2"
  sha256 arm:   "d941947d6d952e5d7bfbf7bfaa3e010ccd7b1e0b8c44d3eda1caed406cdfad0c",
         intel: "1fc33dc3c3af2823ecf77c4cf21f69be1c348d43ceab966720d2d834b900e55f"

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

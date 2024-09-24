cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.644.0.6440702,5d4c1832df4a483d"
  sha256 arm:   "06b7da02ad8e9e7d3653f9ad8ffa8c090ebb75a7306fabf0f9adc4c6ef70fa67",
         intel: "475d403becb05be9f3135b297a344946973e34e4a1d3d5d599102f759d12f5a8"

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

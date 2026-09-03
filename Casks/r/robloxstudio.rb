cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.737.0.7371584,a2b0c06b16aa4ef0"
  sha256 arm:   "72c1a7d48def8d76eb23b9e35faed194bd4bdfc47254fa9498819f01be4b6336",
         intel: "faf06cd8e59212dd71c7c1a139d56c20119532abcc2c489c8c95a0906b109fc0"

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
    "~/Library/Preferences/com.roblox.RobloxStudio.plist",
    "~/Library/Preferences/com.roblox.RobloxStudioChannel.plist",
  ]
end

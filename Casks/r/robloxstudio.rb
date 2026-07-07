cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.729.0.7290838,5b9aac84f7f64f49"
  sha256 arm:   "40baf3387910171c32af4c9726bcde65b78b62ddb5d02976c05ea2ff9dabc213",
         intel: "9268e33f2ab31b9b17a3dfe55866632b40b7870b2f800b865c8f6df4fe37c528"

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

  uninstall quit: "com.roblox.RobloxStudio"

  zap trash: [
    "~/Library/Preferences/com.roblox.RobloxStudio.plist",
    "~/Library/Preferences/com.roblox.RobloxStudioChannel.plist",
  ]
end

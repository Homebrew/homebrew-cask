cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.739.0.7390687,7a83fc2d08a249b9"
  sha256 arm:   "b07ffdb3865ae9a9d665cd3e85934a77370e7f58d3a8d0d97091e57a1f4f0953",
         intel: "e3508b1a2742cbadb2620fd1acf1b91f2520d917bbce4350f8ddeb27b6b7daa1"

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

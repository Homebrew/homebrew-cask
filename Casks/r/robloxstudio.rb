cask "robloxstudio" do
  arch arm: "arm64/"

  version "0.709.0.7090870,fe1e865bd8cc422d"
  sha256 arm:   "6db6987ca600d333da9e41b063e4bfed76b210789d4f8d9baa176b90b2cf7ff3",
         intel: "cad03cb8f32cda028b7663936fd67421be12375b815ec841f333e02f520c25cc"

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

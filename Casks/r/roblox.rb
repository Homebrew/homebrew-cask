cask "roblox" do
  version "0.633.1.6330512,a8ca20f2b0e344c3"
  sha256 "f7accc2d8c7418abe73193c478a628ce9e5cf95aa12e65039191aa31135b4886"

  url "https://setup.rbxcdn.com/mac/version-#{version.csv.second}-RobloxPlayer.zip",
      verified: "setup.rbxcdn.com/"
  name "Roblox"
  desc "Online multiplayer game platform"
  homepage "https://www.roblox.com/"

  livecheck do
    url "https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer"
    strategy :json do |json|
      version = json["version"]
      client_version = json["clientVersionUpload"]&.split("-")&.second
      next if version.blank? || client_version.blank?
      "#{version},#{client_version}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "RobloxPlayer.app", target: "Roblox.app"

  uninstall quit:   "com.roblox.RobloxPlayer",
            delete: "/Applications/Roblox.app"

  zap trash: [
    "~/Library/Preferences/com.Roblox.Roblox.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayer.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayerChannel.plist",
  ]

  caveats do
    requires_rosetta
  end
end

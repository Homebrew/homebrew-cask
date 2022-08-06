cask "roblox" do
  version "1.2.2.5360459,6e3d2e7c823142ae"
  sha256 "eefc95fb85c888cbefaa16212779954c46482197442a82555f2e622135a28f06"

  url "https://setup.rbxcdn.com/mac/version-#{version.csv.second}-Roblox.dmg",
      verified: "setup.rbxcdn.com/"
  name "Roblox"
  desc "Online multiplayer game platform"
  homepage "https://www.roblox.com/"

  livecheck do
    url "https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer"
    regex(/version[._-]([^"]+)/i)
    strategy :page_match do |page, regex|
      client_version = page[regex, 1]
      next if client_version.blank?

      cask = CaskLoader.load("roblox")
      download_url = "https://setup.rbxcdn.com/mac/version-#{client_version}-Roblox.dmg"
      main_version = Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask: cask, url: download_url)[:matches].values.first
      next if main_version.blank?

      "#{main_version},#{client_version}"
    end
  end

  installer manual: "Roblox.app"

  uninstall quit:   "com.roblox.RobloxPlayer",
            delete: "/Applications/Roblox.app"

  zap trash: [
    "~/Library/Preferences/com.Roblox.Roblox.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayer.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayerChannel.plist",
  ]
end

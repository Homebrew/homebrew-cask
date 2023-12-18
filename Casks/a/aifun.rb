cask "aifun" do
  version "0.7.1"
  sha256 "3b0731d8981397c52772939e6d5359d583723e3d2e21793239ca07dc46130d3e"

  url "https://static.aifun.kapokcloud.com/v#{version}/AiFun_#{version}_macos.dmg",
      verified: "static.aifun.kapokcloud.com/"
  name "AiFun"
  desc "AI chat and painting app"
  homepage "https://getaifun.com/"

  livecheck do
    url "https://static.aifun.kapokcloud.com/updater/updater.json"
    strategy :json do |json|
      json["version"].sub("v", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "AiFun.app"

  uninstall quit: "com.getaifun"

  zap trash: [
    "~/Library/Application Scripts/com.getaifun",
    "~/Library/Caches/com.getaifun",
    "~/Library/Containers/com.getaifun",
    "~/Library/Preferences/com.getaifun.plist",
    "~/Library/Saved Application State/com.getaifun.savedState",
  ]
end

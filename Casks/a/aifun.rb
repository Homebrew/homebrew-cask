cask "aifun" do
  version "0.7.6"
  sha256 "f319784cfb89ab6caad6ecc03ac6c7c175b951c3b80007cd01f8c834474dcde1"

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

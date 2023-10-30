cask "aifun" do
  version "0.6.5"
  sha256 "5efad754ba2dddf13ccfbbc568b0c67021a984931312a2f57daf5e861ecfd3cf"

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

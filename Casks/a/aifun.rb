cask "aifun" do
  version "0.4.0"
  sha256 "1c74251ac032800e57aeada210b383b1e5f4dfd34e5493bc6a403478bcdef98f"

  url "https://static.aifun.kapokcloud.com/v#{version}/AiFun_#{version}_macos.dmg",
      verified: "static.aifun.kapokcloud.com"
  name "AiFun"
  desc "Ai chat and ai painting"
  homepage "https://getaifun.com/"

  livecheck do
    url "https://static.aifun.kapokcloud.com/updater/updater.json"
    regex(/AiFun_(\d+(?:\.\d+)+)_macos\.app\.tar\.gz/i)
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

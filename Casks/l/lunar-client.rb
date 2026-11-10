cask "lunar-client" do
  arch arm: "arm64", intel: "x64"

  version "3.7.34"
  sha256 arm:          "5e4e9321127bfee33831770d19a70e2728b90490d82b4a93eb49f0a5c5aeb29a",
         intel:        "da690e20d5bdc6204265a48e04a0a149f729f565609991fcc3c7e417d54df00d",
         x86_64_linux: "afe2f1db17d35afc6f3c2b2e5b24c9ef8cb5ff3ea99c8a839756057023a3e191"

  on_macos do
    url "https://launcher-releases.lunarclientprod.com/master/6e18b5a4f4ebbd4c7ecff572f1700cedce1f248bcb157adce5ec49be9e081a23/Lunar%20Client%20v#{version}-ow-#{arch}.dmg"

    depends_on macos: :ventura

    app "Lunar Client.app"

    uninstall launchctl: "com.moonsworth.client.ShipIt",
              quit:      "com.moonsworth.client"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.moonsworth.client.sfl*",
      "~/Library/Application Support/lunarclient",
      "~/Library/Caches/com.moonsworth.client",
      "~/Library/Caches/com.moonsworth.client.ShipIt",
      "~/Library/Logs/Lunar Client",
      "~/Library/Preferences/com.moonsworth.client.plist",
      "~/Library/Saved Application State/com.moonsworth.client.savedState",
    ]
  end
  on_linux do
    url "https://launcher-releases.lunarclientprod.com/master/6e18b5a4f4ebbd4c7ecff572f1700cedce1f248bcb157adce5ec49be9e081a23/Lunar%20Client-#{version}-ow.AppImage"

    depends_on arch: :x86_64

    app_image "Lunar Client-#{version}-ow.AppImage", target: "Lunar Client.AppImage"

    zap trash: "~/.config/lunarclient"
  end

  name "Lunar Client"
  desc "Minecraft modpack"
  homepage "https://www.lunarclient.com/"

  livecheck do
    url "https://launcher-releases.lunarclientprod.com/master/6e18b5a4f4ebbd4c7ecff572f1700cedce1f248bcb157adce5ec49be9e081a23/latest-ow-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.delete_suffix("-ow")
    end
  end

  auto_updates true
end
